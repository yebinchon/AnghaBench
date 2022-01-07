
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 scalar_t__ ENOENT ;



 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ sysctlbyname (char const*,char*,size_t*,int ,int ) ;
 int xo_warn (char*,char const*) ;
 int xo_warnx (char*,int ) ;

__attribute__((used)) static int
pcblist_sysctl(int proto, const char *name, char **bufp)
{
 const char *mibvar;
 char *buf;
 size_t len;

 switch (proto) {
 case 129:
  mibvar = "net.inet.tcp.pcblist";
  break;
 case 128:
  mibvar = "net.inet.udp.pcblist";
  break;
 case 130:
  mibvar = "net.inet.divert.pcblist";
  break;
 default:
  mibvar = "net.inet.raw.pcblist";
  break;
 }
 if (strncmp(name, "sdp", 3) == 0)
  mibvar = "net.inet.sdp.pcblist";
 len = 0;
 if (sysctlbyname(mibvar, 0, &len, 0, 0) < 0) {
  if (errno != ENOENT)
   xo_warn("sysctl: %s", mibvar);
  return (0);
 }
 if ((buf = malloc(len)) == ((void*)0)) {
  xo_warnx("malloc %lu bytes", (u_long)len);
  return (0);
 }
 if (sysctlbyname(mibvar, buf, &len, 0, 0) < 0) {
  xo_warn("sysctl: %s", mibvar);
  free(buf);
  return (0);
 }
 *bufp = buf;
 return (1);
}
