
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct iovec {int dummy; } ;
typedef int errbuf ;
typedef int device ;


 int S_IWGRP ;
 char* _PATH_DEV ;
 int errno ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strerror (int ) ;
 char const* ttymsg (struct iovec*,int,char*,int) ;

__attribute__((used)) static const char *
ttymsg_check(struct iovec *iov, int iovcnt, char *line, int tmout)
{
 static char device[1024];
 static char errbuf[1024];
 struct stat sb;

 (void) snprintf(device, sizeof(device), "%s%s", _PATH_DEV, line);

 if (stat(device, &sb) < 0) {
  (void) snprintf(errbuf, sizeof(errbuf),
      "%s: %s", device, strerror(errno));
  return (errbuf);
 }
 if ((sb.st_mode & S_IWGRP) == 0)

  return (((void*)0));
 return ttymsg(iov, iovcnt, line, tmout);
}
