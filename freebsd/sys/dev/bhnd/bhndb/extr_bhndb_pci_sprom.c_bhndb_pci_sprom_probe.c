
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int bhnd_sprom_probe (int ) ;
 int bhndb_pci_driver ;
 int * device_get_driver (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
bhndb_pci_sprom_probe(device_t dev)
{
 device_t bridge;
 int error;


 bridge = device_get_parent(dev);
 if (device_get_driver(bridge) != &bhndb_pci_driver)
  return (ENXIO);


 if ((error = bhnd_sprom_probe(dev)) > 0)
  return (error);

 return (BUS_PROBE_NOWILDCARD);
}
