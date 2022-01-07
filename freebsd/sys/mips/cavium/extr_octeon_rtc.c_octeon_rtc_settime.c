
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timespec {int tv_sec; } ;
typedef int device_t ;
typedef int cvmx_rtc_options_t ;


 int CVMX_RTC_WRITE ;
 int EINVAL ;
 int ENOTSUP ;
 int cvmx_rtc_supported () ;
 scalar_t__ cvmx_rtc_write (int ) ;

__attribute__((used)) static int
octeon_rtc_settime(device_t dev, struct timespec *ts)
{
 cvmx_rtc_options_t supported;
 uint32_t status;

 supported = cvmx_rtc_supported();
 if ((supported & CVMX_RTC_WRITE) == 0)
  return (ENOTSUP);

 status = cvmx_rtc_write(ts->tv_sec);
 if (status != 0)
  return (EINVAL);

 return (0);
}
