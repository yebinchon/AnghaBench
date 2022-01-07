
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,int *) ;
 int the_time ;
 int warn (char*) ;

int
priv_clock_settime_setup(int asroot, int injail, struct test *test)
{

 if (clock_gettime(CLOCK_REALTIME, &the_time) < 0) {
  warn("priv_clock_settime_setup: "
      "clock_gettime(CLOCK_REALTIME)");
  return (-1);
 }
 return (0);
}
