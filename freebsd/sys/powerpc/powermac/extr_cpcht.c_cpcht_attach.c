
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
struct TYPE_4__ {int sc_io_rman; int sc_quirks; } ;
struct cpcht_softc {TYPE_2__* htirq_map; int htirq_mtx; TYPE_1__ pci_sc; scalar_t__ sc_data; scalar_t__ sc_populated_slots; } ;
typedef int reg ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;
struct TYPE_5__ {int irq_type; } ;


 scalar_t__ CPCHT_IOPORT_SIZE ;
 int ENXIO ;
 int IRQ_INTERNAL ;
 int MTX_DEF ;
 int OFW_PCI_QUIRK_RANGES_ON_CHILDREN ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,int *,int) ;
 scalar_t__ OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bzero (TYPE_2__*,int) ;
 int cpcht_configure_htbridge (int ,scalar_t__) ;
 TYPE_2__* cpcht_irqmap ;
 struct cpcht_softc* device_get_softc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ofw_pci_attach (int ) ;
 scalar_t__ pmap_mapdev (int ,int ) ;
 int rman_manage_region (int *,int ,scalar_t__) ;

__attribute__((used)) static int
cpcht_attach(device_t dev)
{
 struct cpcht_softc *sc;
 phandle_t node, child;
 u_int32_t reg[3];
 int i;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);

 if (OF_getencprop(node, "reg", reg, sizeof(reg)) < 12)
  return (ENXIO);

 if (OF_getproplen(node, "ranges") <= 0)
  sc->pci_sc.sc_quirks = OFW_PCI_QUIRK_RANGES_ON_CHILDREN;
 sc->sc_populated_slots = 0;
 sc->sc_data = (vm_offset_t)pmap_mapdev(reg[1], reg[2]);
 bzero(sc->htirq_map, sizeof(sc->htirq_map));
 mtx_init(&sc->htirq_mtx, "cpcht irq", ((void*)0), MTX_DEF);
 for (i = 0; i < 8; i++)
  sc->htirq_map[i].irq_type = IRQ_INTERNAL;
 for (child = OF_child(node); child != 0; child = OF_peer(child))
  cpcht_configure_htbridge(dev, child);


 cpcht_irqmap = sc->htirq_map;

 return (ofw_pci_attach(dev));
}
