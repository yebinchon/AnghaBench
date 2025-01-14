
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; unsigned char* prga; unsigned char* iv; } ;


 int O_CREAT ;
 int O_WRONLY ;
 int PRGA_FILE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int exit (int) ;
 int free (unsigned char*) ;
 int hexdump (unsigned char*,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int open (int ,int,int) ;
 int perror (char*) ;
 TYPE_1__ prgainfo ;
 int printf (char*,int,int) ;
 int time_print (char*,int,unsigned char,unsigned char,unsigned char) ;
 int write (int,unsigned char*,int) ;

void set_prga(unsigned char* iv, unsigned char* cipher,
       unsigned char* clear, int len) {

 int i;
 int fd;

 if (prgainfo.len != 0)
  free(prgainfo.prga);

 prgainfo.prga = (unsigned char*) malloc(len);
 if (!prgainfo.prga) {
  perror("malloc()");
  exit(1);
 }

 prgainfo.len = len;
 memcpy(prgainfo.iv, iv, 3);

 for (i = 0; i < len; i++) {
  prgainfo.prga[i] = ( cipher ? (clear[i] ^ cipher[i]) :
              clear[i]);
 }

 time_print("Got %d bytes of prga IV=(%.02x:%.02x:%.02x) PRGA=",
        prgainfo.len, prgainfo.iv[0], prgainfo.iv[1], prgainfo.iv[2]);
 hexdump(prgainfo.prga, prgainfo.len);

 if (!cipher)
  return;

 fd = open(PRGA_FILE, O_WRONLY | O_CREAT,
    S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

 if (fd == -1) {
  perror("open()");
  exit(1);
 }

 i = write(fd, prgainfo.iv, 3);
 if (i == -1) {
  perror("write()");
  exit(1);
 }
 if (i != 3) {
  printf("Wrote %d out of %d\n", i, 3);
  exit(1);
 }

 i = write(fd, prgainfo.prga, prgainfo.len);
 if (i == -1) {
  perror("write()");
  exit(1);
 }
 if (i != prgainfo.len) {
  printf("Wrote %d out of %d\n", i, prgainfo.len);
  exit(1);
 }

 close(fd);
}
