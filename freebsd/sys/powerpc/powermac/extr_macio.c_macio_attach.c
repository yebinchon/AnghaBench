
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef char u_int ;
struct TYPE_5__ {char* rm_descr; int rm_type; } ;
struct macio_softc {scalar_t__ sc_node; char sc_base; int * sc_memr; int sc_size; TYPE_1__ sc_mem_rman; int sc_memrid; } ;
struct TYPE_6__ {int obd_name; } ;
struct macio_devinfo {TYPE_3__ mdi_obdinfo; int mdi_resources; scalar_t__ mdi_ninterrupts; } ;
typedef scalar_t__ ssize_t ;
typedef int reg ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;
typedef int compat ;


 int DELAY (int) ;
 int ENXIO ;
 int FCR1_I2S0_CLK_ENABLE ;
 int FCR1_I2S0_ENABLE ;
 int FCR_ENET_ENABLE ;
 int FCR_ENET_RESET ;
 int HEATHROW_FCR ;
 int KEYLARGO_FCR1 ;
 int MACIO_QUIRK_CHILD_HAS_INTR ;
 int MACIO_QUIRK_IGNORE ;
 int MACIO_QUIRK_USE_CHILD_REG ;
 int MACIO_REG_SIZE ;
 int M_MACIO ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RMAN_ARRAY ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int *,int ,int *,int ) ;
 int bus_generic_attach (int *) ;
 int bus_read_4 (int *,int ) ;
 int bus_write_4 (int *,int ,int) ;
 int * device_add_child (int *,int *,int) ;
 struct macio_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,int) ;
 int device_set_ivars (int *,struct macio_devinfo*) ;
 int free (struct macio_devinfo*,int ) ;
 int macio_add_intr (scalar_t__,struct macio_devinfo*) ;
 int macio_add_reg (scalar_t__,struct macio_devinfo*) ;
 int macio_get_quirks (int) ;
 struct macio_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_3__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_3__*,scalar_t__) ;
 char* ofw_bus_get_compat (int *) ;
 char* ofw_bus_get_name (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
macio_attach(device_t dev)
{
 struct macio_softc *sc;
        struct macio_devinfo *dinfo;
        phandle_t root;
 phandle_t child;
 phandle_t subchild;
        device_t cdev;
        u_int reg[3];
 char compat[32];
 int error, quirks;

 sc = device_get_softc(dev);
 root = sc->sc_node = ofw_bus_get_node(dev);




 if (OF_getprop(root, "assigned-addresses",
         reg, sizeof(reg)) < (ssize_t)sizeof(reg)) {
  return (ENXIO);
 }


 OF_getprop(root, "compatible", compat, sizeof(compat));

 sc->sc_base = reg[2];
 sc->sc_size = MACIO_REG_SIZE;

 sc->sc_memrid = PCIR_BAR(0);
 sc->sc_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_memrid, RF_ACTIVE);

 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "MacIO Device Memory";
 error = rman_init(&sc->sc_mem_rman);
 if (error) {
  device_printf(dev, "rman_init() failed. error = %d\n", error);
  return (error);
 }
 error = rman_manage_region(&sc->sc_mem_rman, 0, sc->sc_size);
 if (error) {
  device_printf(dev,
      "rman_manage_region() failed. error = %d\n", error);
  return (error);
 }




 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_MACIO, M_WAITOK | M_ZERO);
  if (ofw_bus_gen_setup_devinfo(&dinfo->mdi_obdinfo, child) !=
      0) {
   free(dinfo, M_MACIO);
   continue;
  }
  quirks = macio_get_quirks(dinfo->mdi_obdinfo.obd_name);
  if ((quirks & MACIO_QUIRK_IGNORE) != 0) {
   ofw_bus_gen_destroy_devinfo(&dinfo->mdi_obdinfo);
   free(dinfo, M_MACIO);
   continue;
  }
  resource_list_init(&dinfo->mdi_resources);
  dinfo->mdi_ninterrupts = 0;
  macio_add_intr(child, dinfo);
  if ((quirks & MACIO_QUIRK_USE_CHILD_REG) != 0)
   macio_add_reg(OF_child(child), dinfo);
  else
   macio_add_reg(child, dinfo);
  if ((quirks & MACIO_QUIRK_CHILD_HAS_INTR) != 0)
   for (subchild = OF_child(child); subchild != 0;
       subchild = OF_peer(subchild))
    macio_add_intr(subchild, dinfo);
  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       dinfo->mdi_obdinfo.obd_name);
   resource_list_free(&dinfo->mdi_resources);
   ofw_bus_gen_destroy_devinfo(&dinfo->mdi_obdinfo);
   free(dinfo, M_MACIO);
   continue;
  }
  device_set_ivars(cdev, dinfo);


  if (sc->sc_memr == ((void*)0))
   continue;

  if (strcmp(ofw_bus_get_name(cdev), "bmac") == 0 ||
      (ofw_bus_get_compat(cdev) != ((void*)0) &&
      strcmp(ofw_bus_get_compat(cdev), "bmac+") == 0)) {
   uint32_t fcr;

   fcr = bus_read_4(sc->sc_memr, HEATHROW_FCR);

   fcr |= FCR_ENET_ENABLE & ~FCR_ENET_RESET;
   bus_write_4(sc->sc_memr, HEATHROW_FCR, fcr);
   DELAY(50000);
   fcr |= FCR_ENET_RESET;
   bus_write_4(sc->sc_memr, HEATHROW_FCR, fcr);
   DELAY(50000);
   fcr &= ~FCR_ENET_RESET;
   bus_write_4(sc->sc_memr, HEATHROW_FCR, fcr);
   DELAY(50000);

   bus_write_4(sc->sc_memr, HEATHROW_FCR, fcr);
  }





  if ((strcmp(ofw_bus_get_name(cdev), "i2s") == 0) &&
      (strcmp(compat, "K2-Keylargo") == 0)) {

   uint32_t fcr1;

   fcr1 = bus_read_4(sc->sc_memr, KEYLARGO_FCR1);
   fcr1 |= FCR1_I2S0_CLK_ENABLE | FCR1_I2S0_ENABLE;
   bus_write_4(sc->sc_memr, KEYLARGO_FCR1, fcr1);
  }

 }

 return (bus_generic_attach(dev));
}
