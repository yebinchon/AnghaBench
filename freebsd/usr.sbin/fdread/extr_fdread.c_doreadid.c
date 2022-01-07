
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_status {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;
struct fdc_readid {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;
struct fd_type {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;


 scalar_t__ EIO ;
 int EX_IOERR ;
 int EX_OSERR ;
 int FD_GSTAT ;
 int FD_GTYPE ;
 int FD_READID ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int ioctl (int,int ,struct fdc_status*) ;
 int perror (char*) ;
 int printf (char*,unsigned int,unsigned int,int,int) ;
 int printstatus (struct fdc_status*,int ) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static int
doreadid(int fd, unsigned int numids, unsigned int trackno)
{
 int rv = 0;
 unsigned int i;
 struct fdc_readid info;
 struct fdc_status fdcs;
 struct fd_type fdt;

 if (ioctl(fd, FD_GTYPE, &fdt) == -1)
  err(EX_OSERR, "ioctl(FD_GTYPE) failed -- not a floppy?");

 for (i = 0; i < numids; i++) {
  info.cyl = trackno / fdt.heads;
  info.head = fdt.heads > 1? trackno % fdt.heads: 0;
  if (ioctl(fd, FD_READID, &info) == 0) {
   printf("C = %d, H = %d, R = %d, N = %d\n",
          info.cyl, info.head, info.sec, info.secshift);
  } else {
   if (errno != EIO) {
    perror("non-IO error");
    return (EX_OSERR);
   }
   if (ioctl(fd, FD_GSTAT, &fdcs) == -1)
    errx(EX_IOERR,
         "floppy IO error, but no FDC status");
   printstatus(&fdcs, 0);
   putc('\n', stderr);
   rv = EX_IOERR;
  }
 }

 return (rv);
}
