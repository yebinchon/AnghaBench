
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int cvmx_rtc_options_t ;


 int CVMX_RTC_READ ;
 int ENXIO ;
 int clock_register (int ,int) ;
 int cvmx_rtc_supported () ;

__attribute__((used)) static int
octeon_rtc_attach(device_t dev)
{
 cvmx_rtc_options_t supported;

 supported = cvmx_rtc_supported();
 if ((supported & CVMX_RTC_READ) == 0)
  return (ENXIO);

 clock_register(dev, 1000000);
 return (0);
}
