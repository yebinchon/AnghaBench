
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {char* rm_descr; int rm_type; int rm_end; int rm_start; } ;
struct mvs_controller {int channels; int quirks; int ccc; int cccc; TYPE_1__ sc_iomem; int r_mem; int r_rid; int mtx; int * dev; } ;
typedef int * device_t ;
struct TYPE_6__ {scalar_t__ id; scalar_t__ rev; int ports; int quirks; } ;


 int ENXIO ;
 int MTX_DEF ;
 int MVS_Q_GENI ;
 int MVS_Q_GENII ;
 int MVS_Q_GENIIE ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RMAN_ARRAY ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int *,int ,int *,int ) ;
 int bus_generic_attach (int *) ;
 int bus_release_resource (int *,int ,int ,int ) ;
 int * device_add_child (int *,char*,int) ;
 int device_get_name (int *) ;
 struct mvs_controller* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,void*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mvs_ctlr_setup (int *) ;
 TYPE_4__* mvs_ids ;
 scalar_t__ mvs_setup_interrupt (int *) ;
 int pci_enable_busmaster (int *) ;
 scalar_t__ pci_get_devid (int *) ;
 scalar_t__ pci_get_revid (int *) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int rman_fini (TYPE_1__*) ;
 int rman_get_end (int ) ;
 int rman_get_start (int ) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
mvs_attach(device_t dev)
{
 struct mvs_controller *ctlr = device_get_softc(dev);
 device_t child;
 int error, unit, i;
 uint32_t devid = pci_get_devid(dev);
 uint8_t revid = pci_get_revid(dev);

 ctlr->dev = dev;
 i = 0;
 while (mvs_ids[i].id != 0 &&
     (mvs_ids[i].id != devid ||
      mvs_ids[i].rev > revid))
  i++;
 ctlr->channels = mvs_ids[i].ports;
 ctlr->quirks = mvs_ids[i].quirks;
 ctlr->ccc = 0;
 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "ccc", &ctlr->ccc);
 ctlr->cccc = 8;
 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "cccc", &ctlr->cccc);
 if (ctlr->ccc == 0 || ctlr->cccc == 0) {
  ctlr->ccc = 0;
  ctlr->cccc = 0;
 }
 if (ctlr->ccc > 100000)
  ctlr->ccc = 100000;
 device_printf(dev,
     "Gen-%s, %d %sGbps ports, Port Multiplier %s%s\n",
     ((ctlr->quirks & MVS_Q_GENI) ? "I" :
      ((ctlr->quirks & MVS_Q_GENII) ? "II" : "IIe")),
     ctlr->channels,
     ((ctlr->quirks & MVS_Q_GENI) ? "1.5" : "3"),
     ((ctlr->quirks & MVS_Q_GENI) ?
     "not supported" : "supported"),
     ((ctlr->quirks & MVS_Q_GENIIE) ?
     " with FBS" : ""));
 mtx_init(&ctlr->mtx, "MVS controller lock", ((void*)0), MTX_DEF);

 ctlr->r_rid = PCIR_BAR(0);
 if (!(ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE)))
  return ENXIO;

 ctlr->sc_iomem.rm_start = rman_get_start(ctlr->r_mem);
 ctlr->sc_iomem.rm_end = rman_get_end(ctlr->r_mem);
 ctlr->sc_iomem.rm_type = RMAN_ARRAY;
 ctlr->sc_iomem.rm_descr = "I/O memory addresses";
 if ((error = rman_init(&ctlr->sc_iomem)) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  return (error);
 }
 if ((error = rman_manage_region(&ctlr->sc_iomem,
     rman_get_start(ctlr->r_mem), rman_get_end(ctlr->r_mem))) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  rman_fini(&ctlr->sc_iomem);
  return (error);
 }
 pci_enable_busmaster(dev);
 mvs_ctlr_setup(dev);

 if (mvs_setup_interrupt(dev)) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  rman_fini(&ctlr->sc_iomem);
  return ENXIO;
 }

 for (unit = 0; unit < ctlr->channels; unit++) {
  child = device_add_child(dev, "mvsch", -1);
  if (child == ((void*)0))
   device_printf(dev, "failed to add channel device\n");
  else
   device_set_ivars(child, (void *)(intptr_t)unit);
 }
 bus_generic_attach(dev);
 return 0;
}
