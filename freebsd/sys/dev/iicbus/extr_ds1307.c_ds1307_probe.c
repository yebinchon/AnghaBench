
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {scalar_t__ ocd_data; int * ocd_str; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int device_set_desc (int ,char const*) ;
 int ds1307_compat_data ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
ds1307_probe(device_t dev)
{
 device_set_desc(dev, "Maxim DS1307 RTC");

 return (BUS_PROBE_NOWILDCARD);

}
