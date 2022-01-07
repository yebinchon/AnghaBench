
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef int device_t ;


 scalar_t__ Y2K ;
 int lv1_get_rtc (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
ps3_gettime(device_t dev, struct timespec *ts)
{
 uint64_t rtc, tb;
 int result;

 result = lv1_get_rtc(&rtc, &tb);
 if (result)
  return (result);

 ts->tv_sec = rtc + Y2K;
 ts->tv_nsec = 0;
 return (0);
}
