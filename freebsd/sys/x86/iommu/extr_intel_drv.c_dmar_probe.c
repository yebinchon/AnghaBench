
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
dmar_probe(device_t dev)
{

 if (acpi_get_handle(dev) != ((void*)0))
  return (ENXIO);
 device_set_desc(dev, "DMA remap");
 return (BUS_PROBE_NOWILDCARD);
}
