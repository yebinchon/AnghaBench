
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;




 int device_set_desc (int ,char*) ;
 int ow_get_family (int ) ;

__attribute__((used)) static int
ow_temp_probe(device_t dev)
{

 switch (ow_get_family(dev)) {
 case 131:
  device_set_desc(dev, "One Wire Temperature");
  return BUS_PROBE_DEFAULT;
 case 130:
 case 129:
 case 128:
  device_set_desc(dev, "Advanced One Wire Temperature");
  return BUS_PROBE_DEFAULT;
 default:
  return ENXIO;
 }
}
