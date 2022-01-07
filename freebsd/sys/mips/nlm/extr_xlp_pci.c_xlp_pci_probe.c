
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
xlp_pci_probe(device_t dev)
{
 device_t pcib;

 pcib = device_get_parent(dev);




 if (strcmp(device_get_nameunit(pcib), "pcib0") != 0)
  return (ENXIO);
 device_set_desc(dev, "XLP SoCbus");
 return (BUS_PROBE_DEFAULT);
}
