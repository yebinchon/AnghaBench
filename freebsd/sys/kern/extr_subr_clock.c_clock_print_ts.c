
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct clocktime {int dummy; } ;


 int clock_print_ct (struct clocktime*,int) ;
 int clock_ts_to_ct (struct timespec const*,struct clocktime*) ;

void
clock_print_ts(const struct timespec *ts, int nsdigits)
{
 struct clocktime ct;

 clock_ts_to_ct(ts, &ct);
 clock_print_ct(&ct, nsdigits);
}
