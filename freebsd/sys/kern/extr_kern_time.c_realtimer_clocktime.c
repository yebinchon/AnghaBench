
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef scalar_t__ clockid_t ;


 scalar_t__ CLOCK_REALTIME ;
 int getnanotime (struct timespec*) ;
 int getnanouptime (struct timespec*) ;

__attribute__((used)) static void
realtimer_clocktime(clockid_t id, struct timespec *ts)
{
 if (id == CLOCK_REALTIME)
  getnanotime(ts);
 else
  getnanouptime(ts);
}
