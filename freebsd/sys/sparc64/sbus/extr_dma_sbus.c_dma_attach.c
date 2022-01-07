
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lsi64854_softc {int sc_burst; int * sc_res; int * sc_dev; int sc_parent_dmat; int sc_channel; } ;
struct dma_softc {int sc_slot; int sc_ign; struct lsi64854_softc sc_lsi64854; } ;
struct TYPE_2__ {int obd_name; } ;
struct dma_devinfo {TYPE_1__ ddi_obdinfo; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int DELAY (int) ;
 int ENXIO ;
 int E_TP_AUI ;
 int L64854_CHANNEL_ENET ;
 int L64854_CHANNEL_SCSI ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int L64854_SCSR (struct lsi64854_softc*,int ) ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 int RF_ACTIVE ;
 int SBUS_BURST_16 ;
 int SBUS_BURST_32 ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int *,int ,int*,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_generic_attach (int *) ;
 int bus_get_dma_tag (int *) ;
 int bus_release_resource (int *,int ,int ,int *) ;
 int * device_add_child (int *,int *,int) ;
 struct dma_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,struct dma_devinfo*) ;
 int dma_destroy_dinfo (struct dma_devinfo*) ;
 struct dma_devinfo* dma_setup_dinfo (int *,struct dma_softc*,scalar_t__) ;
 char* ofw_bus_get_name (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int rman_get_rid (int *) ;
 int sbus_get_burstsz (int *) ;
 int sbus_get_ign (int *) ;
 int sbus_get_slot (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dma_attach(device_t dev)
{
 struct dma_softc *dsc;
 struct lsi64854_softc *lsc;
 struct dma_devinfo *ddi;
 device_t cdev;
 const char *name;
 char *cabletype;
 uint32_t csr;
 phandle_t child, node;
 int error, i;

 dsc = device_get_softc(dev);
 lsc = &dsc->sc_lsi64854;

 name = ofw_bus_get_name(dev);
 node = ofw_bus_get_node(dev);
 dsc->sc_ign = sbus_get_ign(dev);
 dsc->sc_slot = sbus_get_slot(dev);

 i = 0;
 lsc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &i,
     RF_ACTIVE);
 if (lsc->sc_res == ((void*)0)) {
  device_printf(dev, "cannot allocate resources\n");
  return (ENXIO);
 }

 if (strcmp(name, "espdma") == 0 || strcmp(name, "dma") == 0)
  lsc->sc_channel = L64854_CHANNEL_SCSI;
 else if (strcmp(name, "ledma") == 0) {







  csr = L64854_GCSR(lsc);
  if ((OF_getprop_alloc(node, "cable-selection",
      (void **)&cabletype)) == -1) {

   csr |= E_TP_AUI;
  } else {
   if (strcmp(cabletype, "aui") == 0)
    csr &= ~E_TP_AUI;
   else
    csr |= E_TP_AUI;
   OF_prop_free(cabletype);
  }
  L64854_SCSR(lsc, csr);
  DELAY(20000);
  lsc->sc_channel = L64854_CHANNEL_ENET;
 } else {
  device_printf(dev, "unsupported DMA channel\n");
  error = ENXIO;
  goto fail_lres;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE,
     BUS_SPACE_UNRESTRICTED,
     BUS_SPACE_MAXSIZE,
     0,
     ((void*)0), ((void*)0),
     &lsc->sc_parent_dmat);
 if (error != 0) {
  device_printf(dev, "cannot allocate parent DMA tag\n");
  goto fail_lres;
 }

 i = sbus_get_burstsz(dev);
 lsc->sc_burst = (i & SBUS_BURST_32) ? 32 :
     (i & SBUS_BURST_16) ? 16 : 0;
 lsc->sc_dev = dev;


 i = 0;
 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  if ((ddi = dma_setup_dinfo(dev, dsc, child)) == ((void*)0))
   continue;
  if (i != 0) {
   device_printf(dev,
       "<%s>: only one child per DMA channel supported\n",
       ddi->ddi_obdinfo.obd_name);
   dma_destroy_dinfo(ddi);
   continue;
  }
  if ((cdev = device_add_child(dev, ((void*)0), -1)) == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       ddi->ddi_obdinfo.obd_name);
   dma_destroy_dinfo(ddi);
   continue;
  }
  device_set_ivars(cdev, ddi);
  i++;
 }
 return (bus_generic_attach(dev));

 fail_lres:
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(lsc->sc_res),
     lsc->sc_res);
 return (error);
}
