
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_probe {int hostb_core; } ;
struct bhndb_pci_core {int dummy; } ;
typedef int * device_t ;
typedef int * devclass_t ;
typedef int bhnd_devclass_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int bhndb_disable_pci_clocks (int *) ;
 int bhndb_enable_pci_clocks (int *) ;
 int bhndb_expected_pci_devclass (int *) ;
 struct bhndb_pci_core* bhndb_pci_find_core (int *) ;
 int bhndb_pci_probe_alloc (struct bhndb_pci_probe**,int *,int ) ;
 int bhndb_pci_probe_free (struct bhndb_pci_probe*) ;
 int * devclass_find (char*) ;
 int * devclass_get_parent (int *) ;
 int * device_get_devclass (int *) ;
 int * device_get_parent (int *) ;
 int device_set_desc (int *,char*) ;

__attribute__((used)) static int
bhndb_pci_probe(device_t dev)
{
 struct bhndb_pci_probe *probe;
 struct bhndb_pci_core *entry;
 bhnd_devclass_t hostb_devclass;
 device_t parent, parent_bus;
 devclass_t pci, bus_devclass;
 int error;

 probe = ((void*)0);


 pci = devclass_find("pci");
 parent = device_get_parent(dev);
 parent_bus = device_get_parent(parent);
 if (parent_bus == ((void*)0))
  return (ENXIO);


 for (bus_devclass = device_get_devclass(parent_bus);
     bus_devclass != ((void*)0);
     bus_devclass = devclass_get_parent(bus_devclass))
 {
  if (bus_devclass == pci)
   break;
 }

 if (bus_devclass != pci)
  return (ENXIO);


 if ((error = bhndb_enable_pci_clocks(dev)))
  return (error);


 hostb_devclass = bhndb_expected_pci_devclass(dev);
 if ((error = bhndb_pci_probe_alloc(&probe, dev, hostb_devclass)))
  goto cleanup;


 if ((entry = bhndb_pci_find_core(&probe->hostb_core)) == ((void*)0)) {
  error = ENXIO;
  goto cleanup;
 }

 device_set_desc(dev, "PCI-BHND bridge");


 error = BUS_PROBE_DEFAULT;

cleanup:
 if (probe != ((void*)0))
  bhndb_pci_probe_free(probe);

 bhndb_disable_pci_clocks(dev);

 return (error);
}
