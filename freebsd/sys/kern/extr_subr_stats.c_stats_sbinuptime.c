
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sbintime_t ;


 int CLOCK_MONOTONIC_FAST ;
 int clock_gettime (int ,struct timespec*) ;
 int sbinuptime () ;
 int tstosbt (struct timespec) ;

__attribute__((used)) static inline sbintime_t
stats_sbinuptime(void)
{
 sbintime_t sbt;




 struct timespec tp;

 clock_gettime(CLOCK_MONOTONIC_FAST, &tp);
 sbt = tstosbt(tp);


 return (sbt);
}
