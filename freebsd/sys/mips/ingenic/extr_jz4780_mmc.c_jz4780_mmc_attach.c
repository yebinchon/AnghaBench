
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int f_max; int f_min; int host_ocr; int caps; int mode; } ;
struct jz4780_mmc_softc {int sc_timeout; int * sc_clk; int * sc_res; int sc_intrhand; int sc_mtx; int sc_timeoutc; TYPE_1__ sc_host; int * sc_dev; int sc_bsh; int sc_bst; int * sc_req; } ;
typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int CTLFLAG_RW ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 size_t JZ_MSC_IRQRES ;
 size_t JZ_MSC_MEMRES ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_HSPEED ;
 int MMC_OCR_320_330 ;
 int MMC_OCR_330_340 ;
 int MTX_DEF ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int *,int ,int *) ;
 int bus_release_resources (int *,int ,int *) ;
 scalar_t__ bus_setup_intr (int *,int ,int,int *,int ,struct jz4780_mmc_softc*,int *) ;
 int bus_teardown_intr (int *,int ,int ) ;
 int callout_drain (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int clk_release (int *) ;
 int * device_add_child (int *,char*,int) ;
 int device_delete_child (int *,int *) ;
 int device_get_nameunit (int *) ;
 struct jz4780_mmc_softc* device_get_softc (int *) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int *) ;
 int device_get_sysctl_tree (int *) ;
 int device_printf (int *,char*,...) ;
 scalar_t__ device_probe_and_attach (int *) ;
 scalar_t__ jz4780_mmc_enable_clock (struct jz4780_mmc_softc*) ;
 int jz4780_mmc_intr ;
 int jz4780_mmc_pio_mode ;
 int jz4780_mmc_res_spec ;
 scalar_t__ jz4780_mmc_reset (struct jz4780_mmc_softc*) ;
 scalar_t__ jz4780_mmc_setup_dma (struct jz4780_mmc_softc*) ;
 int mode_sd ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int *) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
jz4780_mmc_attach(device_t dev)
{
 struct jz4780_mmc_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *tree;
 device_t child;
 ssize_t len;
 pcell_t prop;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_req = ((void*)0);
 if (bus_alloc_resources(dev, jz4780_mmc_res_spec, sc->sc_res) != 0) {
  device_printf(dev, "cannot allocate device resources\n");
  return (ENXIO);
 }
 sc->sc_bst = rman_get_bustag(sc->sc_res[JZ_MSC_MEMRES]);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res[JZ_MSC_MEMRES]);
 if (bus_setup_intr(dev, sc->sc_res[JZ_MSC_IRQRES],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), jz4780_mmc_intr, sc,
     &sc->sc_intrhand)) {
  bus_release_resources(dev, jz4780_mmc_res_spec, sc->sc_res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }
 sc->sc_timeout = 10;
 ctx = device_get_sysctl_ctx(dev);
 tree = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "req_timeout", CTLFLAG_RW,
     &sc->sc_timeout, 0, "Request timeout in seconds");
 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev), "jz4780_mmc",
     MTX_DEF);
 callout_init_mtx(&sc->sc_timeoutc, &sc->sc_mtx, 0);


 if (jz4780_mmc_reset(sc) != 0) {
  device_printf(dev, "cannot reset the controller\n");
  goto fail;
 }
 if (jz4780_mmc_pio_mode == 0 && jz4780_mmc_setup_dma(sc) != 0) {
  device_printf(sc->sc_dev, "Couldn't setup DMA!\n");
  jz4780_mmc_pio_mode = 1;
 }
 if (bootverbose)
  device_printf(sc->sc_dev, "DMA status: %s\n",
      jz4780_mmc_pio_mode ? "disabled" : "enabled");

 node = ofw_bus_get_node(dev);

 sc->sc_host.f_max = 24000000;
 len = OF_getencprop(node, "max-frequency", &prop, sizeof(prop));
 if (len / sizeof(prop) == 1)
  sc->sc_host.f_max = prop;
 sc->sc_host.f_min = sc->sc_host.f_max / 128;

 sc->sc_host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
 sc->sc_host.caps = MMC_CAP_HSPEED;
 sc->sc_host.mode = mode_sd;




 len = OF_getencprop(node, "bus-width", &prop, sizeof(prop));
 if (len / sizeof(prop) != 1)
  sc->sc_host.caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
 else if (prop == 8)
  sc->sc_host.caps |= MMC_CAP_8_BIT_DATA;
 else if (prop == 4)
  sc->sc_host.caps |= MMC_CAP_4_BIT_DATA;

 if (jz4780_mmc_enable_clock(sc) != 0) {
  device_printf(dev, "cannot activate mmc clock\n");
  goto fail;
 }

 child = device_add_child(dev, "mmc", -1);
 if (child == ((void*)0)) {
  device_printf(dev, "attaching MMC bus failed!\n");
  goto fail;
 }
 if (device_probe_and_attach(child) != 0) {
  device_printf(dev, "attaching MMC child failed!\n");
  device_delete_child(dev, child);
  goto fail;
 }

 return (0);

fail:
 callout_drain(&sc->sc_timeoutc);
 mtx_destroy(&sc->sc_mtx);
 bus_teardown_intr(dev, sc->sc_res[JZ_MSC_IRQRES], sc->sc_intrhand);
 bus_release_resources(dev, jz4780_mmc_res_spec, sc->sc_res);
 if (sc->sc_clk != ((void*)0))
  clk_release(sc->sc_clk);
 return (ENXIO);
}
