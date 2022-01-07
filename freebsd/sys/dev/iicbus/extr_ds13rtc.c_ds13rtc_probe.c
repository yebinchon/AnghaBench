
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int TYPE_NONE ;
 int * desc_strings ;
 int device_set_desc (int ,int ) ;
 int ds13rtc_get_chiptype (int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
ds13rtc_probe(device_t dev)
{
 int chiptype, goodrv;






 goodrv = BUS_PROBE_NOWILDCARD;


 chiptype = ds13rtc_get_chiptype(dev);
 if (chiptype == TYPE_NONE)
  return (ENXIO);

 device_set_desc(dev, desc_strings[chiptype]);
 return (goodrv);
}
