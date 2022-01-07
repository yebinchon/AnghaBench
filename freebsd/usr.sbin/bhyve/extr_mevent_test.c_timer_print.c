
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tsc_freq ;


 int TEVSZ ;
 int UINT64_MAX ;
 int printf (char*,int,int,int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int* tevbuf ;

__attribute__((used)) static void
timer_print(void)
{
 uint64_t min, max, diff, sum, tsc_freq;
 size_t len;
 int j;

 min = UINT64_MAX;
 max = 0;
 sum = 0;

 len = sizeof(tsc_freq);
 sysctlbyname("machdep.tsc_freq", &tsc_freq, &len, ((void*)0), 0);

 for (j = 1; j < TEVSZ; j++) {

  diff = (tevbuf[j] - tevbuf[j-1]) * 1000000 / tsc_freq;
  sum += diff;
  if (min > diff)
   min = diff;
  if (max < diff)
   max = diff;
 }

 printf("timers done: usecs, min %ld, max %ld, mean %ld\n", min, max,
     sum/(TEVSZ - 1));
}
