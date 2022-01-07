
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int device_t ;


 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecclear (struct timespec*) ;
 int xen_fetch_uptime (struct timespec*) ;
 int xen_fetch_wallclock (struct timespec*) ;

__attribute__((used)) static int
xentimer_gettime(device_t dev, struct timespec *ts)
{
 struct timespec u_ts;

 timespecclear(ts);
 xen_fetch_wallclock(ts);
 xen_fetch_uptime(&u_ts);
 timespecadd(ts, &u_ts, ts);

 return (0);
}
