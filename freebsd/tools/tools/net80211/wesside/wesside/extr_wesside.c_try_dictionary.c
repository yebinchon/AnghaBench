
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uLong ;
struct ieee80211_frame {int* i_fc; unsigned char* i_addr3; unsigned char* i_addr2; unsigned char* i_addr1; } ;
struct ether_header {int ether_shost; int ether_dhost; } ;
typedef int paths ;
typedef int packet ;


 char* DICT_PATH ;
 int IEEE80211_FC1_DIR_FROMDS ;
 int IEEE80211_FC1_DIR_TODS ;
 int O_RDONLY ;
 unsigned char* Z_NULL ;
 int assert (int) ;
 int close (int) ;
 unsigned long crc32 (unsigned long,unsigned char*,int) ;
 int exit (int) ;
 int hexdump (unsigned char*,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,unsigned char*,int) ;
 int snprintf (char*,int,char*,unsigned char) ;
 int sprintf (char*,char*,char*,char*,char*,char*) ;
 int tapfd ;
 int time_print (char*,...) ;
 int write (int ,unsigned char*,int) ;

void try_dictionary(struct ieee80211_frame* wh, int len) {
 unsigned char *body;
 char path[52];
 char paths[3][3];
 int i;
 int fd, rd;
 unsigned char packet[4096];
 int dlen;
 struct ether_header* eh;
 uLong crc;
 unsigned long *pcrc;
 unsigned char* dmac, *smac;

 assert (len < sizeof(packet) + sizeof(*eh));

 body = (unsigned char*) wh + sizeof(*wh);

 for (i = 0; i < 3; i++)
  snprintf(paths[i], sizeof(paths[i]), "%.2X", body[i]);

 sprintf(path, "%s/%s/%s/%s", DICT_PATH, paths[0], paths[1], paths[2]);

 fd = open(path, O_RDONLY);
 if (fd == -1)
  return;

 rd = read(fd, &packet[6], sizeof(packet)-6);
 if (rd == -1) {
  perror("read()");
  exit(1);
 }
 close(fd);


 dlen = len - sizeof(*wh) - 4;
 if (dlen > rd) {
  printf("\n");
  time_print("Had PRGA (%s) but too little (%d/%d)\n", path, rd,
  dlen);
  return;
 }

 body += 4;
 for (i = 0; i < dlen; i++)
  packet[6+i] ^= body[i];

 dlen -= 4;
 crc = crc32(0L, Z_NULL, 0);
 crc = crc32(crc, &packet[6], dlen);
 pcrc = (unsigned long*) (&packet[6+dlen]);

 if (*pcrc != crc) {
  printf("\n");
  time_print("HAD PRGA (%s) checksum mismatch! (%x %x)\n",
      path, *pcrc, crc);
  return;
 }


 eh = (struct ether_header*) packet;
 if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS)
  smac = wh->i_addr3;
 else
  smac = wh->i_addr2;

 if (wh->i_fc[1] & IEEE80211_FC1_DIR_TODS)
  dmac = wh->i_addr3;
 else
  dmac = wh->i_addr1;

 memcpy(eh->ether_dhost, dmac, 6);
 memcpy(eh->ether_shost, smac, 6);


 dlen -= 8;
 dlen += sizeof(*eh);







 rd = write(tapfd, packet, dlen);
 if (rd == -1) {
  perror("write()");
  exit(1);
 }
 if (rd != dlen) {
  printf("Wrote %d / %d\n", rd, dlen);
  exit(1);
 }
}
