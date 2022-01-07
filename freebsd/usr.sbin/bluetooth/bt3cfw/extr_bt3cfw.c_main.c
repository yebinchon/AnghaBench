
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int path ;
struct TYPE_2__ {int block_address; int block_size; int block_alignment; } ;
typedef TYPE_1__ ng_bt3c_firmware_block_ep ;
typedef int buffer ;
typedef int FILE ;


 int BT3CFW_IDENT ;
 int BT3CFW_MAX_FIRMWARE_SIZE ;
 int LOG_ERR ;
 int LOG_NDELAY ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_USER ;
 int NGM_BT3C_COOKIE ;
 int NGM_BT3C_NODE_DOWNLOAD_FIRMWARE ;
 int NG_PATHSIZ ;
 scalar_t__ NgMkSockNode (int *,int*,int*) ;
 scalar_t__ NgSendMsg (int,char*,int ,int ,void const*,int) ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (int *) ;
 int getopt (int,char**,char*) ;
 int hexa2int16 (char*) ;
 int hexa2int32 (char*) ;
 int hexa2int8 (char*) ;
 int memset (char*,int ,int) ;
 int openlog (int ,int,int ) ;
 char* optarg ;
 int snprintf (char*,int,char*,char*) ;
 char* strerror (int) ;
 int syslog (int ,char*,...) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 FILE *firmware_file = ((void*)0);
 char buffer[80], path[NG_PATHSIZ],
  *firmware_filename = ((void*)0);
 uint8_t *firmware = ((void*)0);
 int firmware_size, opt, cs, ds;

 memset(path, 0, sizeof(path));
 openlog(BT3CFW_IDENT, LOG_NDELAY|LOG_PID|LOG_PERROR, LOG_USER);

 while ((opt = getopt(argc, argv, "f:hn:")) != -1) {
  switch (opt) {
  case 'f':
   firmware_filename = optarg;
   break;

  case 'n':
   snprintf(path, sizeof(path), "%s:", optarg);
   break;

  case 'h':
  default:
   usage();

  }
 }

 if (firmware_filename == ((void*)0) || path[0] == 0)
  usage();


 firmware = (uint8_t *) calloc(BT3CFW_MAX_FIRMWARE_SIZE,
     sizeof(uint8_t));
 if (firmware == ((void*)0)) {
  syslog(LOG_ERR, "Could not allocate firmware buffer");
  exit(255);
 }

 if ((firmware_file = fopen(firmware_filename, "r")) == ((void*)0)) {
  syslog(LOG_ERR, "Could not open BT3C firmware file %s. %s (%d)",
    firmware_filename, strerror(errno), errno);
  exit(255);
 }

 firmware_size = 0;

 while (fgets(buffer, sizeof(buffer), firmware_file)) {
  int i, size, address, cs, fcs;

  size = hexa2int8(buffer + 2);
  address = hexa2int32(buffer + 4);
  fcs = hexa2int8(buffer + 2 + size * 2);

  if (buffer[1] == '3') {
   ng_bt3c_firmware_block_ep *block = ((void*)0);
   uint16_t *data = ((void*)0);

   block = (ng_bt3c_firmware_block_ep *)
      (firmware + firmware_size);

   firmware_size += sizeof(*block);
   if (firmware_size >= BT3CFW_MAX_FIRMWARE_SIZE) {
    syslog(LOG_ERR, "Could not add new firmware " "block. Firmware file %s is " "too big, firmware_size=%d",


      firmware_filename,
      firmware_size);
    exit(255);
   }

   block->block_address = address;
   block->block_size = (size - 4) / 2;
   block->block_alignment = (block->block_size * 2) % 3;
   if (block->block_alignment != 0)
    block->block_alignment = 3 - block->block_alignment;

   firmware_size += (block->block_size * 2);
   firmware_size += block->block_alignment;
   if (firmware_size >= BT3CFW_MAX_FIRMWARE_SIZE) {
    syslog(LOG_ERR, "Could not add new firmware " "data. Firmware file %s is " "too big, firmware_size=%d",


      firmware_filename,
      firmware_size);
    exit(255);
   }


   cs = 0;
   for (i = 0; i < 5; i++)
    cs += hexa2int8(buffer + 2 + i * 2);


   data = (uint16_t *)(block + 1);
   for (i = 0; i < block->block_size; i++) {
    data[i] = hexa2int16(buffer + (i * 4) + 12);
    cs += (((data[i] & 0xff00) >> 8) & 0xff);
    cs += (data[i] & 0x00ff);
   }
  } else
   for (cs = 0, i = 0; i < size; i++)
    cs += hexa2int8(buffer + 2 + i * 2);

  if (((cs + fcs) & 0xff) != 0xff) {
   syslog(LOG_ERR, "Invalid firmware file %s. Checksum " "error, cs=%#x, fcs=%#x, checksum=%#x",

     firmware_filename, (cs & 0xff), fcs,
     ((cs + fcs) & 0xff));
   exit(255);
  }
 }


 if (NgMkSockNode(((void*)0), &cs, &ds) < 0) {
  syslog(LOG_ERR, "Could not create Netgraph socket. %s (%d)",
    strerror(errno), errno);
  exit(255);
 }

 if (NgSendMsg(cs, path, NGM_BT3C_COOKIE,
   NGM_BT3C_NODE_DOWNLOAD_FIRMWARE,
   (void const *) firmware, firmware_size) < 0) {
  syslog(LOG_ERR, "Could not send Netgraph message. %s (%d)",
    strerror(errno), errno);
  exit(255);
 }

 free(firmware);
 firmware = ((void*)0);
 fclose(firmware_file);

 return (0);
}
