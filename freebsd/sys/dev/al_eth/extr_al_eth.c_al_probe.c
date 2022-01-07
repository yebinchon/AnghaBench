
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ al_is_device_supported (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
al_probe(device_t dev)
{
 if ((al_is_device_supported(dev)) != 0) {
  device_set_desc(dev, "al");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
