
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads111x_chipinfo {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct ads111x_chipinfo* ads111x_find_chipinfo (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
ads111x_probe(device_t dev)
{
 const struct ads111x_chipinfo *info;

 info = ads111x_find_chipinfo(dev);
 if (info != ((void*)0)) {
  device_set_desc(dev, info->name);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
