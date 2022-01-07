
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int lpc_ids ;
 int ppc_probe (int ,int ) ;

__attribute__((used)) static int
ppc_acpi_probe(device_t dev)
{
 device_t parent;
 int error;

 parent = device_get_parent(dev);

 error = ISA_PNP_PROBE(parent, dev, lpc_ids);
 if (error)
  return (ENXIO);

 device_set_desc(dev, "Parallel port");
 return (ppc_probe(dev, 0));
}
