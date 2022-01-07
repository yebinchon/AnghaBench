
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;


 int DIOCGFLUSH ;
 scalar_t__ ENOTSUP ;
 int EX_IOERR ;
 int MAXTX ;
 int T0 () ;
 int TS (int,int) ;
 double delta_t () ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int fsync (int) ;
 int ioctl (int,int ) ;
 int parwrite (int,int,int) ;
 int printf (char*,...) ;
 int random () ;

__attribute__((used)) static void
slogbench(int fd, int isreg, off_t mediasize, u_int sectorsize)
{
 off_t off;
 u_int size;
 int error, n, N, nowritecache = 0;

 printf("Synchronous random writes:\n");
 for (size = sectorsize; size <= MAXTX; size *= 2) {
  printf("\t%4.4g kbytes: ", (double)size / 1024);
  N = 0;
  T0();
  do {
   for (n = 0; n < 250; n++) {
    off = random() % (mediasize / size);
    parwrite(fd, size, off * size);
    if (nowritecache)
     continue;
    if (isreg)
     error = fsync(fd);
    else
     error = ioctl(fd, DIOCGFLUSH);
    if (error < 0) {
     if (errno == ENOTSUP)
      nowritecache = 1;
     else
      err(EX_IOERR, "Flush error");
    }
   }
   N += 250;
  } while (delta_t() < 1.0);
  TS(size, N);
 }
}
