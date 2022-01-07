
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_level {int dummy; } ;


 int EBUSY ;
 int printf (char*) ;
 int * timecounter ;
 int tsc_timecounter ;

__attribute__((used)) static void
tsc_freq_changing(void *arg, const struct cf_level *level, int *status)
{

 if (*status != 0 || timecounter != &tsc_timecounter)
  return;

 printf("timecounter TSC must not be in use when "
     "changing frequencies; change denied\n");
 *status = EBUSY;
}
