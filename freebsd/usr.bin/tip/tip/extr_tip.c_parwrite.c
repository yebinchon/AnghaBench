
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EIO ;
 scalar_t__ ENXIO ;
 scalar_t__ bits8 ;
 scalar_t__ errno ;
 char* partab ;
 int perror (char*) ;
 int tipabort (char*) ;
 scalar_t__ write (int,char*,size_t) ;

void
parwrite(int fd, char *buf, size_t n)
{
 size_t i;
 char *bp;

 bp = buf;
 if (bits8 == 0)
  for (i = 0; i < n; i++) {
   *bp = partab[(*bp) & 0177];
   bp++;
  }
 if (write(fd, buf, n) < 0) {
  if (errno == EIO || errno == ENXIO)
   tipabort("Lost carrier.");

  perror("write");
 }
}
