
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ cvmx_rtc_options_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 scalar_t__ cvmx_rtc_supported () ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
octeon_rtc_probe(device_t dev)
{
 cvmx_rtc_options_t supported;

 if (device_get_unit(dev) != 0)
  return (ENXIO);

 supported = cvmx_rtc_supported();
 if (supported == 0)
  return (ENXIO);

 device_set_desc(dev, "Cavium Octeon Realtime Clock");
 return (BUS_PROBE_NOWILDCARD);
}
