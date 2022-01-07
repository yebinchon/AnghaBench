
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int an_alloc_irq (int ,int ,int ) ;
 int an_ids ;
 int an_probe (int ) ;
 int an_release_resources (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
an_probe_isa(device_t dev)
{
 int error = 0;

 error = ISA_PNP_PROBE(device_get_parent(dev), dev, an_ids);
 if (error == ENXIO)
  return(error);

 error = an_probe(dev);
 an_release_resources(dev);
 if (error == 0)
  return (ENXIO);

 error = an_alloc_irq(dev, 0, 0);
 an_release_resources(dev);
 if (!error)
  device_set_desc(dev, "Aironet ISA4500/ISA4800");
 return (error);
}
