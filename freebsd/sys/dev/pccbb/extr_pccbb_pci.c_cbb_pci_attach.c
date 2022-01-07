
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {int sec; int sub; } ;
struct cbb_softc {int domain; int pribus; int subbus; int mtx; int * base_res; int * irq_res; int dev; int sc_root_token; int event_thread; TYPE_2__* exca; int intrhand; int * cbdev; TYPE_1__ bus; int (* chipinit ) (struct cbb_softc*) ;int bsh; int bst; int rl; int chipset; } ;
typedef int device_t ;
struct TYPE_5__ {int * pccarddev; int chipset; int flags; } ;


 int CARD_OFF ;
 int CBBR_SOCKBASE ;
 int CBB_EXCA_OFFSET ;
 int CBB_SOCKET_EVENT ;
 int CBB_SOCKET_MASK ;
 int CBB_SOCKET_MASK_CD ;
 int CTLFLAG_RD ;
 int DEVPRINTF (int ) ;
 int ENOMEM ;
 int EXCA_CARDBUS ;
 int EXCA_HAS_MEMREG_WIN ;
 int EXCA_INTR ;
 int EXCA_INTR_RESET ;
 int INTR_MPSAFE ;
 int INTR_TYPE_AV ;
 int MTX_DEF ;
 int OID_AUTO ;
 int PCIR_PRIBUS_2 ;
 int PCIR_SECBUS_2 ;
 int PCIR_SUBBUS_2 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SLIST_INIT (int *) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int ,int *,struct cbb_softc*,int *) ;
 int cbb_chipinit (struct cbb_softc*) ;
 int cbb_chipset (int ,int *) ;
 int cbb_event_thread ;
 int cbb_get (struct cbb_softc*,int ) ;
 int cbb_pci_filt ;
 int cbb_power (int ,int ) ;
 int cbb_print_config (int ) ;
 int cbb_set (struct cbb_softc*,int ,int ) ;
 int cbb_setb (struct cbb_softc*,int ,int ) ;
 void* device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int exca_clrb (TYPE_2__*,int ,int ) ;
 int exca_init (TYPE_2__*,int ,int ,int ,int ) ;
 scalar_t__ kproc_create (int ,struct cbb_softc*,int *,int ,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int panic (char*) ;
 int pci_get_devid (int ) ;
 int pci_get_domain (int ) ;
 void* pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int pcib_get_bus (int ) ;
 int pcib_setup_secbus (int ,TYPE_1__*,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 int root_mount_hold (int ) ;
 int stub1 (struct cbb_softc*) ;

__attribute__((used)) static int
cbb_pci_attach(device_t brdev)
{

 static int curr_bus_number = 2;
 uint32_t pribus;

 struct cbb_softc *sc = (struct cbb_softc *)device_get_softc(brdev);
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;
 int rid;
 device_t parent;

 parent = device_get_parent(brdev);
 mtx_init(&sc->mtx, device_get_nameunit(brdev), "cbb", MTX_DEF);
 sc->chipset = cbb_chipset(pci_get_devid(brdev), ((void*)0));
 sc->dev = brdev;
 sc->cbdev = ((void*)0);
 sc->exca[0].pccarddev = ((void*)0);
 sc->domain = pci_get_domain(brdev);
 sc->pribus = pcib_get_bus(parent);




 sc->bus.sec = pci_read_config(brdev, PCIR_SECBUS_2, 1);
 sc->bus.sub = pci_read_config(brdev, PCIR_SUBBUS_2, 1);

 SLIST_INIT(&sc->rl);

 rid = CBBR_SOCKBASE;
 sc->base_res = bus_alloc_resource_any(brdev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->base_res) {
  device_printf(brdev, "Could not map register memory\n");
  mtx_destroy(&sc->mtx);
  return (ENOMEM);
 } else {
  DEVPRINTF((brdev, "Found memory at %jx\n",
      rman_get_start(sc->base_res)));
 }

 sc->bst = rman_get_bustag(sc->base_res);
 sc->bsh = rman_get_bushandle(sc->base_res);
 exca_init(&sc->exca[0], brdev, sc->bst, sc->bsh, CBB_EXCA_OFFSET);
 sc->exca[0].flags |= EXCA_HAS_MEMREG_WIN;
 sc->exca[0].chipset = EXCA_CARDBUS;
 sc->chipinit = cbb_chipinit;
 sc->chipinit(sc);


 sctx = device_get_sysctl_ctx(brdev);
 soid = device_get_sysctl_tree(brdev);
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "domain",
     CTLFLAG_RD, &sc->domain, 0, "Domain number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "pribus",
     CTLFLAG_RD, &sc->pribus, 0, "Primary bus number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "secbus",
     CTLFLAG_RD, &sc->bus.sec, 0, "Secondary bus number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "subbus",
     CTLFLAG_RD, &sc->bus.sub, 0, "Subordinate bus number");
 DEVPRINTF((brdev, "Secondary bus is %d\n", sc->bus.sec));
 pribus = pci_read_config(brdev, PCIR_PRIBUS_2, 1);
 if (sc->bus.sec == 0 || sc->pribus != pribus) {
  if (curr_bus_number <= sc->pribus)
   curr_bus_number = sc->pribus + 1;
  if (pribus != sc->pribus) {
   DEVPRINTF((brdev, "Setting primary bus to %d\n",
       sc->pribus));
   pci_write_config(brdev, PCIR_PRIBUS_2, sc->pribus, 1);
  }
  sc->bus.sec = curr_bus_number++;
  sc->bus.sub = curr_bus_number++;
  DEVPRINTF((brdev, "Secondary bus set to %d subbus %d\n",
      sc->bus.sec, sc->bus.sub));
  pci_write_config(brdev, PCIR_SECBUS_2, sc->bus.sec, 1);
  pci_write_config(brdev, PCIR_SUBBUS_2, sc->bus.sub, 1);
 }



 sc->cbdev = device_add_child(brdev, "cardbus", -1);
 if (sc->cbdev == ((void*)0))
  DEVPRINTF((brdev, "WARNING: cannot add cardbus bus.\n"));
 else if (device_probe_and_attach(sc->cbdev) != 0)
  DEVPRINTF((brdev, "WARNING: cannot attach cardbus bus!\n"));

 sc->exca[0].pccarddev = device_add_child(brdev, "pccard", -1);
 if (sc->exca[0].pccarddev == ((void*)0))
  DEVPRINTF((brdev, "WARNING: cannot add pccard bus.\n"));
 else if (device_probe_and_attach(sc->exca[0].pccarddev) != 0)
  DEVPRINTF((brdev, "WARNING: cannot attach pccard bus.\n"));


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(brdev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(brdev, "Unable to map IRQ...\n");
  goto err;
 }

 if (bus_setup_intr(brdev, sc->irq_res, INTR_TYPE_AV | INTR_MPSAFE,
     cbb_pci_filt, ((void*)0), sc, &sc->intrhand)) {
  device_printf(brdev, "couldn't establish interrupt\n");
  goto err;
 }


 exca_clrb(&sc->exca[0], EXCA_INTR, EXCA_INTR_RESET);


 cbb_power(brdev, CARD_OFF);


 cbb_setb(sc, CBB_SOCKET_MASK, CBB_SOCKET_MASK_CD);


 cbb_set(sc, CBB_SOCKET_EVENT, cbb_get(sc, CBB_SOCKET_EVENT));

 if (bootverbose)
  cbb_print_config(brdev);


 if (kproc_create(cbb_event_thread, sc, &sc->event_thread, 0, 0,
     "%s event thread", device_get_nameunit(brdev))) {
  device_printf(brdev, "unable to create event thread.\n");
  panic("cbb_create_event_thread");
 }
 sc->sc_root_token = root_mount_hold(device_get_nameunit(sc->dev));
 return (0);
err:
 if (sc->irq_res)
  bus_release_resource(brdev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->base_res) {
  bus_release_resource(brdev, SYS_RES_MEMORY, CBBR_SOCKBASE,
      sc->base_res);
 }
 mtx_destroy(&sc->mtx);
 return (ENOMEM);
}
