
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int mibvar ;


 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,int,char*,char*) ;
 char** socktype ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int ,int ) ;
 int xo_warn (char*,char*) ;
 int xo_warnx (char*,int ) ;

__attribute__((used)) static int
pcblist_sysctl(int type, char **bufp)
{
 char *buf;
 size_t len;
 char mibvar[sizeof "net.local.seqpacket.pcblist"];

 snprintf(mibvar, sizeof(mibvar), "net.local.%s.pcblist", socktype[type]);

 len = 0;
 if (sysctlbyname(mibvar, 0, &len, 0, 0) < 0) {
  if (errno != ENOENT)
   xo_warn("sysctl: %s", mibvar);
  return (-1);
 }
 if ((buf = malloc(len)) == ((void*)0)) {
  xo_warnx("malloc %lu bytes", (u_long)len);
  return (-2);
 }
 if (sysctlbyname(mibvar, buf, &len, 0, 0) < 0) {
  xo_warn("sysctl: %s", mibvar);
  free(buf);
  return (-2);
 }
 *bufp = buf;
 return (0);
}
