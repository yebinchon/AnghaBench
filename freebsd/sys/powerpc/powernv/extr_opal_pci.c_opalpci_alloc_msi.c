
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmem_addr_t ;
struct opalpci_softc {int * msi_vmem; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENODEV ;
 int MAP_IRQ (int ,scalar_t__) ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int OF_xref_from_node (int ) ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_MIN ;
 struct opalpci_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int powerof2 (int) ;
 int vmem_xalloc (int *,int,int ,int ,int ,int ,int ,int,scalar_t__*) ;

__attribute__((used)) static int
opalpci_alloc_msi(device_t dev, device_t child, int count, int maxcount,
    int *irqs)
{
 struct opalpci_softc *sc;
 vmem_addr_t start;
 phandle_t xref;
 int err, i;

 sc = device_get_softc(dev);
 if (sc->msi_vmem == ((void*)0))
  return (ENODEV);

 err = vmem_xalloc(sc->msi_vmem, count, powerof2(count), 0, 0,
     VMEM_ADDR_MIN, VMEM_ADDR_MAX, M_BESTFIT | M_WAITOK, &start);

 if (err)
  return (err);

 xref = OF_xref_from_node(ofw_bus_get_node(dev));
 for (i = 0; i < count; i++)
  irqs[i] = MAP_IRQ(xref, start + i);

 return (0);
}
