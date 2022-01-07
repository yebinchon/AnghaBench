
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_UPTIME ;
 int EX_OSERR ;
 int EX_USAGE ;
 scalar_t__ clock_gettime (int ,int *) ;
 int err (int ,char*) ;
 int errx (int ,char*,int) ;
 scalar_t__ live ;
 int p_rtable_sysctl (int,int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int uptime ;
 int xo_close_container (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_container (char*) ;

void
routepr(int fibnum, int af)
{
 size_t intsize;
 int numfibs;

 if (live == 0)
  return;

 intsize = sizeof(int);
 if (fibnum == -1 &&
     sysctlbyname("net.my_fibnum", &fibnum, &intsize, ((void*)0), 0) == -1)
  fibnum = 0;
 if (sysctlbyname("net.fibs", &numfibs, &intsize, ((void*)0), 0) == -1)
  numfibs = 1;
 if (fibnum < 0 || fibnum > numfibs - 1)
  errx(EX_USAGE, "%d: invalid fib", fibnum);





 if (clock_gettime(CLOCK_UPTIME, &uptime) < 0)
  err(EX_OSERR, "clock_gettime() failed");

 xo_open_container("route-information");
 xo_emit("{T:Routing tables}");
 if (fibnum)
  xo_emit(" ({L:fib}: {:fib/%d})", fibnum);
 xo_emit("\n");
 p_rtable_sysctl(fibnum, af);
 xo_close_container("route-information");
}
