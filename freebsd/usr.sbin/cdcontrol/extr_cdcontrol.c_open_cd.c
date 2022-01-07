
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ ENXIO ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 char* _PATH_DEV ;
 char* cdname ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int fd ;
 int open (char const*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
open_cd(void)
{
 char devbuf[MAXPATHLEN];
 const char *dev;

 if (fd > -1)
  return (1);

 if (cdname) {
     if (*cdname == '/') {
      snprintf (devbuf, MAXPATHLEN, "%s", cdname);
     } else {
      snprintf (devbuf, MAXPATHLEN, "%s%s", _PATH_DEV, cdname);
     }
     fd = open (dev = devbuf, O_RDONLY);
 } else {
     fd = open(dev = "/dev/cdrom", O_RDONLY);
     if (fd < 0 && errno == ENOENT)
  fd = open(dev = "/dev/cd0", O_RDONLY);
 }

 if (fd < 0) {
  if (errno == ENXIO) {



   warnx("no disc in drive %s", dev);
   return (0);
  }
  err(1, "%s", dev);
 }
 return (1);
}
