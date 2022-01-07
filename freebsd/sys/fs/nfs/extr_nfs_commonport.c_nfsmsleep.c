
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct mtx {int dummy; } ;


 int hz ;
 int msleep (void*,struct mtx*,int,char const*,int) ;

int
nfsmsleep(void *chan, void *mutex, int prio, const char *wmesg,
    struct timespec *ts)
{
 u_int64_t nsecval;
 int error, timeo;

 if (ts) {
  timeo = hz * ts->tv_sec;
  nsecval = (u_int64_t)ts->tv_nsec;
  nsecval = ((nsecval * ((u_int64_t)hz)) + 500000000) /
      1000000000;
  timeo += (int)nsecval;
 } else {
  timeo = 0;
 }
 error = msleep(chan, (struct mtx *)mutex, prio, wmesg, timeo);
 return (error);
}
