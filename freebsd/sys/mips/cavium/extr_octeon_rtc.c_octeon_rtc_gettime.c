
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef int device_t ;


 int ENOTSUP ;
 scalar_t__ cvmx_rtc_read () ;

__attribute__((used)) static int
octeon_rtc_gettime(device_t dev, struct timespec *ts)
{
 uint32_t secs;

 secs = cvmx_rtc_read();
 if (secs == 0)
  return (ENOTSUP);

 ts->tv_sec = secs;
 ts->tv_nsec = 0;

 return (0);
}
