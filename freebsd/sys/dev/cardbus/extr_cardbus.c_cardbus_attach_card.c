
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_devinfo {int dummy; } ;
struct cardbus_softc {int dummy; } ;
struct TYPE_6__ {int * dev; scalar_t__ mfdev; } ;
struct TYPE_5__ {TYPE_4__ cfg; int resources; } ;
struct cardbus_devinfo {TYPE_1__ pci; int mprefetchable; } ;
typedef int * device_t ;


 int DEVPRINTF (int *) ;
 int ENOENT ;
 int Giant ;
 int PCI_FUNCMAX ;
 int POWER_DISABLE_SOCKET (int *,int *) ;
 int POWER_ENABLE_SOCKET (int *,int *) ;
 int cardbus_detach_card (int *) ;
 int cardbus_device_create (struct cardbus_softc*,struct cardbus_devinfo*,int *,int *) ;
 int cardbus_device_setup_regs (TYPE_4__*) ;
 scalar_t__ cardbus_do_cis (int *,int *) ;
 int * device_add_child (int *,int *,int) ;
 int * device_get_parent (int *) ;
 struct cardbus_softc* device_get_softc (int *) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int device_set_ivars (int *,struct cardbus_devinfo*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_add_resources (int *,int *,int,int ) ;
 int pci_cfg_restore (int *,TYPE_1__*) ;
 int pci_cfg_save (int *,TYPE_1__*,int) ;
 int pci_freecfg (struct pci_devinfo*) ;
 int pci_print_verbose (TYPE_1__*) ;
 scalar_t__ pci_read_device (int *,int *,int,int,int,int) ;
 int pcib_get_bus (int *) ;
 int pcib_get_domain (int *) ;
 int resource_list_init (int *) ;

__attribute__((used)) static int
cardbus_attach_card(device_t cbdev)
{
 device_t brdev = device_get_parent(cbdev);
 device_t child;
 int bus, domain, slot, func;
 int cardattached = 0;
 int cardbusfunchigh = 0;
 struct cardbus_softc *sc;

 sc = device_get_softc(cbdev);
 cardbus_detach_card(cbdev);
 POWER_DISABLE_SOCKET(brdev, cbdev);
 POWER_ENABLE_SOCKET(brdev, cbdev);
 domain = pcib_get_domain(cbdev);
 bus = pcib_get_bus(cbdev);
 slot = 0;
 mtx_lock(&Giant);

 for (func = 0; func <= cardbusfunchigh; func++) {
  struct cardbus_devinfo *dinfo;

  dinfo = (struct cardbus_devinfo *)
      pci_read_device(brdev, cbdev, domain, bus, slot, func);
  if (dinfo == ((void*)0))
   continue;
  if (dinfo->pci.cfg.mfdev)
   cardbusfunchigh = PCI_FUNCMAX;

  child = device_add_child(cbdev, ((void*)0), -1);
  if (child == ((void*)0)) {
   DEVPRINTF((cbdev, "Cannot add child!\n"));
   pci_freecfg((struct pci_devinfo *)dinfo);
   continue;
  }
  dinfo->pci.cfg.dev = child;
  resource_list_init(&dinfo->pci.resources);
  device_set_ivars(child, dinfo);
  cardbus_device_create(sc, dinfo, cbdev, child);
  if (cardbus_do_cis(cbdev, child) != 0)
   DEVPRINTF((cbdev, "Warning: Bogus CIS ignored\n"));
  pci_cfg_save(dinfo->pci.cfg.dev, &dinfo->pci, 0);
  pci_cfg_restore(dinfo->pci.cfg.dev, &dinfo->pci);
  cardbus_device_setup_regs(&dinfo->pci.cfg);
  pci_add_resources(cbdev, child, 1, dinfo->mprefetchable);
  pci_print_verbose(&dinfo->pci);
  if (device_probe_and_attach(child) == 0)
   cardattached++;
  else
   pci_cfg_save(dinfo->pci.cfg.dev, &dinfo->pci, 1);
 }
 mtx_unlock(&Giant);
 if (cardattached > 0)
  return (0);

 return (ENOENT);
}
