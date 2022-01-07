
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int initstat ;
 int oldstat ;
 scalar_t__ sysctlbyname (char const*,int *,size_t*,int *,int ) ;

void
resetsctp(void)
{
 size_t len;
 const char *name = "net.inet.sctp.stats";

 len = sizeof initstat;
 if (sysctlbyname(name, &initstat, &len, ((void*)0), 0) < 0) {
  error("sysctl getting sctpstat failed");
 }
 oldstat = initstat;
}
