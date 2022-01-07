
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ipmi_attached ;
 scalar_t__ isa_get_logicalid (int ) ;

__attribute__((used)) static int
ipmi_isa_probe(device_t dev)
{






 if (ipmi_attached)
  return (ENXIO);


 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);

 device_set_desc(dev, "IPMI System Interface");
 return (BUS_PROBE_DEFAULT);
}
