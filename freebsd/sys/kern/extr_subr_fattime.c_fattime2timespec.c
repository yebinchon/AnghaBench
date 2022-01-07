
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;


 unsigned int DAY ;
 int FEB ;
 unsigned int LYC ;
 scalar_t__ T1980 ;
 scalar_t__* daytab ;
 scalar_t__ utc_offset () ;

void
fattime2timespec(unsigned dd, unsigned dt, unsigned dh, int utc,
    struct timespec *tsp)
{
 unsigned day;


 tsp->tv_sec = (dt & 0x1f) << 1;
 tsp->tv_sec += ((dt & 0x7e0) >> 5) * 60;
 tsp->tv_sec += ((dt & 0xf800) >> 11) * 3600;
 tsp->tv_sec += dh / 100;
 tsp->tv_nsec = (dh % 100) * 10000000;


 day = (dd & 0x1f) - 1;


 day += LYC * ((dd >> 11) & 0x1f);


 day += daytab[(dd >> 5) & 0x3f];





 if (day >= ((2100 - 1980) / 4 * LYC + FEB))
  day--;


 day += T1980;

 tsp->tv_sec += DAY * day;
 if (!utc)
  tsp->tv_sec += utc_offset();
}
