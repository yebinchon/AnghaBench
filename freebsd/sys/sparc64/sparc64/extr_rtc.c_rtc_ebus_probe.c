
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int RTC_DESC ;
 int device_set_desc (int ,int ) ;
 int * ofw_bus_get_compat (int ) ;
 int * ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
rtc_ebus_probe(device_t dev)
{

 if (strcmp(ofw_bus_get_name(dev), "rtc") == 0) {

  if (ofw_bus_get_compat(dev) != ((void*)0) &&
      strcmp(ofw_bus_get_compat(dev), "bq4802") == 0)
   return (ENXIO);
  device_set_desc(dev, RTC_DESC);
  return (0);
 }

 return (ENXIO);
}
