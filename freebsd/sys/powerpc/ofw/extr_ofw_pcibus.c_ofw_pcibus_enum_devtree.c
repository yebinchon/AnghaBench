
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct pci_devinfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ intpin; } ;
struct TYPE_4__ {int resources; TYPE_1__ cfg; } ;
struct ofw_pcibus_devinfo {TYPE_2__ opd_dinfo; int * opd_dma_tag; int opd_obdinfo; } ;
struct ofw_pci_register {int phys_hi; } ;
typedef scalar_t__ phandle_t ;
typedef int pcir ;
typedef int pcell_t ;
typedef int device_t ;


 int OFW_PCI_PHYS_HI_DEVICE (int ) ;
 int OFW_PCI_PHYS_HI_FUNCTION (int ) ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,int *,int) ;
 scalar_t__ OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int PCIB_WRITE_CONFIG (int ,int ,int ,int ,int ,int,int) ;
 int PCIR_INTLINE ;
 int PCI_INVALID_IRQ ;
 int device_get_parent (int ) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ofw_bus_intr_to_rl (int ,scalar_t__,int *,int *) ;
 int pci_add_child (int ,struct pci_devinfo*) ;
 int * pci_find_dbsf (int ,int ,int ,int ) ;
 int pci_freecfg (struct pci_devinfo*) ;
 scalar_t__ pci_read_device (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
ofw_pcibus_enum_devtree(device_t dev, u_int domain, u_int busno)
{
 device_t pcib;
 struct ofw_pci_register pcir;
 struct ofw_pcibus_devinfo *dinfo;
 phandle_t node, child;
 u_int func, slot;
 int intline;

 pcib = device_get_parent(dev);
 node = ofw_bus_get_node(dev);

 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  if (OF_getencprop(child, "reg", (pcell_t *)&pcir,
      sizeof(pcir)) == -1)
   continue;
  slot = OFW_PCI_PHYS_HI_DEVICE(pcir.phys_hi);
  func = OFW_PCI_PHYS_HI_FUNCTION(pcir.phys_hi);


  if (pci_find_dbsf(domain, busno, slot, func) != ((void*)0))
   continue;







  intline = PCI_INVALID_IRQ;
  if (OF_getproplen(child, "interrupts") > 0)
   intline = 0;
  PCIB_WRITE_CONFIG(pcib, busno, slot, func, PCIR_INTLINE,
      intline, 1);






  dinfo = (struct ofw_pcibus_devinfo *)pci_read_device(pcib, dev,
      domain, busno, slot, func);
  if (dinfo == ((void*)0))
   continue;
  if (ofw_bus_gen_setup_devinfo(&dinfo->opd_obdinfo, child) !=
      0) {
   pci_freecfg((struct pci_devinfo *)dinfo);
   continue;
  }
  dinfo->opd_dma_tag = ((void*)0);
  pci_add_child(dev, (struct pci_devinfo *)dinfo);







  if (dinfo->opd_dinfo.cfg.intpin == 0)
   ofw_bus_intr_to_rl(dev, child,
    &dinfo->opd_dinfo.resources, ((void*)0));
 }
}
