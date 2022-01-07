
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct hme_softc {int sc_burst; int sc_lock; int sc_enaddr; int sc_mifh; int sc_mach; int sc_erxh; int sc_etxh; int sc_sebh; int sc_mift; int sc_mact; int sc_erxt; int sc_etxt; int sc_sebt; int sc_flags; int * sc_dev; } ;
struct hme_pci_softc {struct resource* hsc_sres; struct resource* hsc_ires; int hsc_ih; struct hme_softc hsc_hme; } ;
typedef int * device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int HME_PCI ;
 int HME_ROM_READ_1 (int) ;
 int HME_ROM_READ_2 (scalar_t__) ;
 scalar_t__ HME_ROM_READ_4 (scalar_t__) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_TEMP ;
 int OF_getetheraddr (int *,int ) ;
 scalar_t__ PCIC_BRIDGE ;
 int PCIR_BAR (int ) ;
 int PCI_PRODUCT_SUN_EBUS ;
 scalar_t__ PCI_ROMHDR_PTR_DATA ;
 scalar_t__ PCI_ROMHDR_SIG ;
 int PCI_ROMHDR_SIG_MAGIC ;
 int PCI_ROMHDR_SIZE ;
 scalar_t__ PCI_ROM_DEVICE ;
 scalar_t__ PCI_ROM_PTR_VPD ;
 scalar_t__ PCI_ROM_SIG ;
 scalar_t__ PCI_ROM_SIG_MAGIC ;
 int PCI_ROM_SIZE ;
 scalar_t__ PCI_ROM_VENDOR ;
 int PCI_VENDOR_SUN ;
 int PCI_VPDRES_BYTE0 ;
 scalar_t__ PCI_VPDRES_ISLARGE (int) ;
 int PCI_VPDRES_LARGE_DATA ;
 int PCI_VPDRES_LARGE_LEN_LSB ;
 int PCI_VPDRES_LARGE_LEN_MSB ;
 scalar_t__ PCI_VPDRES_LARGE_NAME (int) ;
 scalar_t__ PCI_VPDRES_TYPE_VPD ;
 scalar_t__ PCI_VPD_DATA ;
 int PCI_VPD_KEY0 ;
 int PCI_VPD_KEY1 ;
 int PCI_VPD_LEN ;
 int PCI_VPD_SIZE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int *,int ,int*,int) ;
 int bus_release_resource (int *,int ,int ,struct resource*) ;
 int bus_setup_intr (int *,struct resource*,int,int *,int ,struct hme_softc*,int *) ;
 int bus_space_read_region_1 (int ,int ,scalar_t__,int ,int) ;
 int bus_space_subregion (int ,int ,int,int,int *) ;
 scalar_t__ device_get_children (int ,int ***,int*) ;
 int device_get_nameunit (int *) ;
 int device_get_parent (int *) ;
 struct hme_pci_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int free (int **,int ) ;
 int hme_config (struct hme_softc*) ;
 int hme_detach (struct hme_softc*) ;
 int hme_intr ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int *) ;
 scalar_t__ pci_get_class (int *) ;
 int pci_get_device (int *) ;
 scalar_t__ pci_get_intpin (int *) ;
 int pci_get_slot (int *) ;
 int pci_get_vendor (int *) ;
 int pci_set_intpin (int *,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_rid (struct resource*) ;

int
hme_pci_attach(device_t dev)
{
 struct hme_pci_softc *hsc;
 struct hme_softc *sc;
 bus_space_tag_t memt;
 bus_space_handle_t memh;
 int i, error = 0;

 device_t *children, ebus_dev;
 struct resource *ebus_rres;
 int j, slot;


 pci_enable_busmaster(dev);




 if (pci_get_intpin(dev) == 0)
  pci_set_intpin(dev, 1);

 hsc = device_get_softc(dev);
 sc = &hsc->hsc_hme;
 sc->sc_dev = dev;
 sc->sc_flags |= HME_PCI;
 mtx_init(&sc->sc_lock, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 i = PCIR_BAR(0);
 hsc->hsc_sres = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &i, RF_ACTIVE);
 if (hsc->hsc_sres == ((void*)0)) {
  device_printf(dev, "could not map device registers\n");
  error = ENXIO;
  goto fail_mtx;
 }
 i = 0;
 hsc->hsc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &i, RF_SHAREABLE | RF_ACTIVE);
 if (hsc->hsc_ires == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt\n");
  error = ENXIO;
  goto fail_sres;
 }
 memt = rman_get_bustag(hsc->hsc_sres);
 memh = rman_get_bushandle(hsc->hsc_sres);
 sc->sc_sebt = sc->sc_etxt = sc->sc_erxt = sc->sc_mact = sc->sc_mift =
     memt;
 bus_space_subregion(memt, memh, 0x0000, 0x1000, &sc->sc_sebh);
 bus_space_subregion(memt, memh, 0x2000, 0x1000, &sc->sc_etxh);
 bus_space_subregion(memt, memh, 0x4000, 0x1000, &sc->sc_erxh);
 bus_space_subregion(memt, memh, 0x6000, 0x1000, &sc->sc_mach);
 bus_space_subregion(memt, memh, 0x7000, 0x1000, &sc->sc_mifh);
 slot = pci_get_slot(dev);
 if (device_get_children(device_get_parent(dev), &children, &i) != 0) {
  device_printf(dev, "could not get children\n");
  error = ENXIO;
  goto fail_sres;
 }
 ebus_dev = ((void*)0);
 for (j = 0; j < i; j++) {
  if (pci_get_class(children[j]) == PCIC_BRIDGE &&
      pci_get_vendor(children[j]) == PCI_VENDOR_SUN &&
      pci_get_device(children[j]) == PCI_PRODUCT_SUN_EBUS &&
      pci_get_slot(children[j]) == slot) {
   ebus_dev = children[j];
   break;
  }
 }
 if (ebus_dev == ((void*)0)) {
  device_printf(dev, "could not find EBus bridge\n");
  error = ENXIO;
  goto fail_children;
 }


 i = PCIR_BAR(0);
 if ((ebus_rres = bus_alloc_resource_any(ebus_dev, SYS_RES_MEMORY,
     &i, RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "could not map PROM registers\n");
  error = ENXIO;
  goto fail_children;
 }
 memt = rman_get_bustag(ebus_rres);
 memh = rman_get_bushandle(ebus_rres);


 if (bus_space_read_2 (memt, memh, ((0x00))) != 0xaa55 ||
     (i = bus_space_read_2 (memt, memh, ((0x18)))) < 0x1c) {
  device_printf(dev, "unexpected PCI Expansion ROM header\n");
  error = ENXIO;
  goto fail_rres;
 }


 if (bus_space_read_4 (memt, memh, ((i + 0x00))) != 0x52494350 ||
     bus_space_read_2 (memt, memh, ((i + 0x04))) != pci_get_vendor(dev) ||
     bus_space_read_2 (memt, memh, ((i + 0x06))) != pci_get_device(dev) ||
     (j = bus_space_read_2 (memt, memh, ((i + 0x08)))) < i + 0x18) {
  device_printf(dev, "unexpected PCI Expansion ROM data\n");
  error = ENXIO;
  goto fail_rres;
 }
 if (bus_space_read_1 (memt, memh, ((j + 0x03 + 0x03 + ETHER_ADDR_LEN))) != 0x79 &&

     bus_space_read_1 (memt, memh, ((j + 4 * (0x03 + 0x03 + ETHER_ADDR_LEN)))) == 0x79)


  j += slot * (0x03 + 0x03 +
      ETHER_ADDR_LEN);
 if (((bus_space_read_1 (memt, memh, ((j + 0x00)))) & 0x80) == 0 ||
     ((bus_space_read_1 (memt, memh, ((j + 0x00)))) & 0x7f) !=
     0x10 ||
     (bus_space_read_1 (memt, memh, ((j + 0x01))) << 8 |
     bus_space_read_1 (memt, memh, ((j + 0x02)))) !=
     0x03 + ETHER_ADDR_LEN ||
     bus_space_read_1 (memt, memh, ((j + 0x03 + 0x00))) !=
     0x4e ||
     bus_space_read_1 (memt, memh, ((j + 0x03 + 0x01))) !=
     0x41 ||
     bus_space_read_1 (memt, memh, ((j + 0x03 + 0x02))) !=
     ETHER_ADDR_LEN) {
  device_printf(dev, "unexpected PCI VPD\n");
  error = ENXIO;
  goto fail_rres;
 }
 bus_space_read_region_1(memt, memh, j + 0x03 +
     0x03, sc->sc_enaddr, ETHER_ADDR_LEN);

fail_rres:
 bus_release_resource(ebus_dev, SYS_RES_MEMORY,
     rman_get_rid(ebus_rres), ebus_rres);
fail_children:
 free(children, M_TEMP);
 if (error != 0)
  goto fail_sres;


 sc->sc_burst = 64;




 if ((error = hme_config(sc)) != 0) {
  device_printf(dev, "could not be configured\n");
  goto fail_ires;
 }

 if ((error = bus_setup_intr(dev, hsc->hsc_ires, INTR_TYPE_NET |
     INTR_MPSAFE, ((void*)0), hme_intr, sc, &hsc->hsc_ih)) != 0) {
  device_printf(dev, "couldn't establish interrupt\n");
  hme_detach(sc);
  goto fail_ires;
 }
 return (0);

fail_ires:
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(hsc->hsc_ires), hsc->hsc_ires);
fail_sres:
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_sres), hsc->hsc_sres);
fail_mtx:
 mtx_destroy(&sc->sc_lock);
 return (error);
}
