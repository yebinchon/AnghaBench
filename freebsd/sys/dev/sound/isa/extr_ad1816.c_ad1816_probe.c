
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int isa_get_logicalid (int ) ;

__attribute__((used)) static int
ad1816_probe(device_t dev)
{
     char *s = ((void*)0);
     u_int32_t logical_id = isa_get_logicalid(dev);

     switch (logical_id) {
     case 0x80719304:
   s = "AD1816";
   break;
     case 0x50719304:
   s = "AD1815";
   break;
     }

     if (s) {
  device_set_desc(dev, s);
  return BUS_PROBE_DEFAULT;
     }
     return ENXIO;
}
