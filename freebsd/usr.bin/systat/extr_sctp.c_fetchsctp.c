
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curstat ;
 int error (char*) ;
 int oldstat ;
 scalar_t__ sysctlbyname (char const*,int *,size_t*,int *,int ) ;

void
fetchsctp(void)
{
 size_t len;
 const char *name = "net.inet.sctp.stats";

 oldstat = curstat;
 len = sizeof curstat;
 if (sysctlbyname(name, &curstat, &len, ((void*)0), 0) < 0) {
  error("sysctl getting sctpstat failed");
 }
 return;
}
