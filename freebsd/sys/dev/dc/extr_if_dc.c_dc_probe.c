
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_type {int dc_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct dc_type* dc_devtype (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
dc_probe(device_t dev)
{
 const struct dc_type *t;

 t = dc_devtype(dev);

 if (t != ((void*)0)) {
  device_set_desc(dev, t->dc_name);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
