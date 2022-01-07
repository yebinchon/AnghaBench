
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int member_0; } ;
struct timespec {int tv_sec; } ;


 int localtime_r (int *,struct tm*) ;

__attribute__((used)) static void
unix2fattime(const struct timespec *tsp, uint16_t *ddp, uint16_t *dtp)
{
 time_t t1;
 struct tm lt = {0};

 t1 = tsp->tv_sec;
 localtime_r(&t1, &lt);

 unsigned long fat_time = ((lt.tm_year - 80) << 25) |
            ((lt.tm_mon + 1) << 21) |
            (lt.tm_mday << 16) |
            (lt.tm_hour << 11) |
            (lt.tm_min << 5) |
            (lt.tm_sec >> 1);

 if (ddp != ((void*)0))
  *ddp = (uint16_t)(fat_time >> 16);
 if (dtp != ((void*)0))
  *dtp = (uint16_t)fat_time;
}
