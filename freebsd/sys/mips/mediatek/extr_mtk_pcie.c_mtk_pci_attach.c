
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rm_descr; void* rm_type; } ;
struct mtk_pci_softc {int addr_mask; scalar_t__ socid; int sc_num_irq; int ** pci_res; TYPE_1__ sc_mem_rman; TYPE_1__ sc_io_rman; TYPE_1__ sc_irq_rman; int ** pci_intrhand; scalar_t__ sc_irq_end; scalar_t__ sc_irq_start; scalar_t__ sc_io_size; scalar_t__ sc_io_base; scalar_t__ sc_mem_size; scalar_t__ sc_mem_base; int sc_dev; } ;
struct mtk_pci_range {scalar_t__ len; scalar_t__ base; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_MISC ;
 scalar_t__ MTK_PCIE0_IRQ ;
 scalar_t__ MTK_PCIE2_IRQ ;
 scalar_t__ MTK_SOC_MT7621 ;
 intptr_t OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 void* RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct mtk_pci_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int * device_add_child (int ,char*,int) ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * intr_pic_register (int ,intptr_t) ;
 int intr_pic_unregister (int ,intptr_t) ;
 struct mtk_pci_softc* mt_sc ;
 int mtk_pci_intr ;
 scalar_t__ mtk_pci_ranges (int ,struct mtk_pci_range*,struct mtk_pci_range*) ;
 scalar_t__ mtk_pcie_phy_init (int ) ;
 int mtk_pcie_phy_stop (int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_fini (TYPE_1__*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
mtk_pci_attach(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);
 struct mtk_pci_range io_space, mem_space;
 phandle_t node;
 intptr_t xref;
 int i, rid;

 sc->sc_dev = dev;
 mt_sc = sc;
 sc->addr_mask = 0xffffffff;


 rid = 0;
 sc->pci_res[0] = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
       RF_ACTIVE);
 if (sc->pci_res[0] == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }


 if (sc->socid == MTK_SOC_MT7621)
  sc->sc_num_irq = 3;
 else {
  sc->sc_num_irq = 1;
  sc->pci_res[2] = sc->pci_res[3] = ((void*)0);
  sc->pci_intrhand[1] = sc->pci_intrhand[2] = ((void*)0);
 }


 for (i = 1; i <= sc->sc_num_irq ; i++) {
  rid = i - 1;
  sc->pci_res[i] = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
         RF_ACTIVE);
  if (sc->pci_res[i] == ((void*)0)) {
   device_printf(dev, "could not allocate interrupt "
       "resource %d\n", rid);
   goto cleanup_res;
  }
 }


 node = ofw_bus_get_node(dev);
 xref = OF_xref_from_node(node);
 if (mtk_pci_ranges(node, &io_space, &mem_space)) {
  device_printf(dev, "could not retrieve 'ranges' data\n");
  goto cleanup_res;
 }


 sc->sc_io_base = io_space.base;
 sc->sc_io_size = io_space.len;
 sc->sc_mem_base = mem_space.base;
 sc->sc_mem_size = mem_space.len;
 sc->sc_irq_start = MTK_PCIE0_IRQ;
 sc->sc_irq_end = MTK_PCIE2_IRQ;


 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "mtk pcie memory window";
 if (rman_init(&sc->sc_mem_rman) != 0 ||
     rman_manage_region(&sc->sc_mem_rman, sc->sc_mem_base,
     sc->sc_mem_base + sc->sc_mem_size - 1) != 0) {
  device_printf(dev, "failed to setup memory rman\n");
  goto cleanup_res;
 }

 sc->sc_io_rman.rm_type = RMAN_ARRAY;
 sc->sc_io_rman.rm_descr = "mtk pcie io window";
 if (rman_init(&sc->sc_io_rman) != 0 ||
     rman_manage_region(&sc->sc_io_rman, sc->sc_io_base,
     sc->sc_io_base + sc->sc_io_size - 1) != 0) {
  device_printf(dev, "failed to setup io rman\n");
  goto cleanup_res;
 }

 sc->sc_irq_rman.rm_type = RMAN_ARRAY;
 sc->sc_irq_rman.rm_descr = "mtk pcie irqs";
 if (rman_init(&sc->sc_irq_rman) != 0 ||
     rman_manage_region(&sc->sc_irq_rman, sc->sc_irq_start,
     sc->sc_irq_end) != 0) {
  device_printf(dev, "failed to setup irq rman\n");
  goto cleanup_res;
 }


 if (mtk_pcie_phy_init(dev)) {
  device_printf(dev, "pcie phy init failed\n");
  goto cleanup_rman;
 }


 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup_rman;
 }


 for (i = 1; i <= sc->sc_num_irq; i++) {
  sc->pci_intrhand[i - 1] = ((void*)0);
  if (bus_setup_intr(dev, sc->pci_res[i], INTR_TYPE_MISC,
      mtk_pci_intr, ((void*)0), sc, &sc->pci_intrhand[i - 1])) {
   device_printf(dev, "could not setup intr handler %d\n",
       i);
   goto cleanup;
  }
 }


 if (device_add_child(dev, "pci", -1) == ((void*)0)) {
  device_printf(dev, "could not attach pci bus\n");
  goto cleanup;
 }


 if (bus_generic_attach(dev)) {
  device_printf(dev, "could not attach to bus\n");
  goto cleanup;
 }

 return (0);

cleanup:



 for (i = 1; i <= sc->sc_num_irq; i++) {
  if (sc->pci_intrhand[i - 1] != ((void*)0))
   bus_teardown_intr(dev, sc->pci_res[i],
       sc->pci_intrhand[i - 1]);
 }
cleanup_rman:
 mtk_pcie_phy_stop(dev);
 rman_fini(&sc->sc_irq_rman);
 rman_fini(&sc->sc_io_rman);
 rman_fini(&sc->sc_mem_rman);
cleanup_res:
 mt_sc = ((void*)0);
 if (sc->pci_res[0] != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->pci_res[0]);
 if (sc->pci_res[1] != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->pci_res[1]);
 if (sc->pci_res[2] != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 1, sc->pci_res[2]);
 if (sc->pci_res[3] != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 2, sc->pci_res[3]);
 return (ENXIO);
}
