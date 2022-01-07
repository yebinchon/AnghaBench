
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_UNAVAILABLE ;
 int FDOPT_NORETRY ;
 int FD_GOPTS ;
 int FD_SOPTS ;
 int errx (int ,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 scalar_t__ lseek (int,long,int ) ;
 int read (int,char*,int) ;
 char* realloc (char*,int) ;
 int warn (char*) ;

__attribute__((used)) static int
verify_track(int fd, int track, int tracksize)
{
 static char *buf;
 static int bufsz;
 int fdopts = -1, ofdopts, rv = 0;

 if (ioctl(fd, FD_GOPTS, &fdopts) < 0)
  warn("warning: ioctl(FD_GOPTS)");
 else {
  ofdopts = fdopts;
  fdopts |= FDOPT_NORETRY;
  (void)ioctl(fd, FD_SOPTS, &fdopts);
 }

 if (bufsz < tracksize)
  buf = realloc(buf, bufsz = tracksize);
 if (buf == ((void*)0))
  errx(EX_UNAVAILABLE, "out of memory");
 if (lseek (fd, (long) track * tracksize, 0) < 0)
  rv = -1;

 else if (read (fd, buf, tracksize) != tracksize
   && read (fd, buf, tracksize) != tracksize)
  rv = -1;
 if (fdopts != -1)
  (void)ioctl(fd, FD_SOPTS, &ofdopts);
 return (rv);
}
