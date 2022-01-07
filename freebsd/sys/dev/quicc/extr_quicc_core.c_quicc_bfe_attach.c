
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource_list_entry {int * res; } ;
struct TYPE_3__ {int rm_start; int rm_end; char* rm_descr; int rm_type; } ;
struct quicc_softc {int sc_fastintr; int sc_polled; int * sc_rres; int * sc_ires; int sc_rtype; TYPE_1__ sc_rman; struct quicc_device* sc_device; scalar_t__ sc_irid; int sc_icookie; scalar_t__ sc_rrid; } ;
struct quicc_device {int qd_dev; int qd_rlist; TYPE_1__* qd_rman; int qd_devtype; } ;
typedef int rman_res_t ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int M_QUICC ;
 int M_WAITOK ;
 int M_ZERO ;
 int QUICC_DEVTYPE_SCC ;
 int QUICC_REG_SIMR_L ;
 int QUICC_REG_SIPNR_H ;
 int QUICC_REG_SIPNR_L ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct quicc_softc*,int *) ;
 int device_add_child (int ,int *,int) ;
 struct quicc_softc* device_get_softc (int ) ;
 int device_print_prettyname (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,void*) ;
 struct quicc_device* malloc (int,int ,int) ;
 int printf (char*,...) ;
 int * quicc_bfe_intr ;
 int quicc_write4 (int *,int ,int) ;
 int resource_list_add (int *,int ,int ,int,int,int) ;
 struct resource_list_entry* resource_list_find (int *,int ,int ) ;
 int resource_list_init (int *) ;
 int rman_get_size (int *) ;
 int rman_get_start (int *) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int,int) ;

int
quicc_bfe_attach(device_t dev)
{
 struct quicc_device *qd;
 struct quicc_softc *sc;
 struct resource_list_entry *rle;
 const char *sep;
 rman_res_t size, start;
 int error;

 sc = device_get_softc(dev);





 sc->sc_rres = bus_alloc_resource_any(dev, sc->sc_rtype, &sc->sc_rrid,
     RF_ACTIVE);
 if (sc->sc_rres == ((void*)0))
  return (ENXIO);

 start = rman_get_start(sc->sc_rres);
 size = rman_get_size(sc->sc_rres);

 sc->sc_rman.rm_start = start;
 sc->sc_rman.rm_end = start + size - 1;
 sc->sc_rman.rm_type = RMAN_ARRAY;
 sc->sc_rman.rm_descr = "QUICC resources";
 error = rman_init(&sc->sc_rman);
 if (!error)
  error = rman_manage_region(&sc->sc_rman, start,
      start + size - 1);
 if (error) {
  bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid,
      sc->sc_rres);
  return (error);
 }




 sc->sc_irid = 0;
 sc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irid,
     RF_ACTIVE | RF_SHAREABLE);

 if (sc->sc_ires != ((void*)0)) {
  error = bus_setup_intr(dev, sc->sc_ires,
      INTR_TYPE_TTY, quicc_bfe_intr, ((void*)0), sc, &sc->sc_icookie);
  if (error) {
   error = bus_setup_intr(dev, sc->sc_ires,
       INTR_TYPE_TTY | INTR_MPSAFE, ((void*)0),
       (driver_intr_t *)quicc_bfe_intr, sc,
       &sc->sc_icookie);
  } else
   sc->sc_fastintr = 1;
  if (error) {
   device_printf(dev, "could not activate interrupt\n");
   bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
       sc->sc_ires);
   sc->sc_ires = ((void*)0);
  }
 }

 if (sc->sc_ires == ((void*)0))
  sc->sc_polled = 1;

 if (bootverbose && (sc->sc_fastintr || sc->sc_polled)) {
  sep = "";
  device_print_prettyname(dev);
  if (sc->sc_fastintr) {
   printf("%sfast interrupt", sep);
   sep = ", ";
  }
  if (sc->sc_polled) {
   printf("%spolled mode", sep);
   sep = ", ";
  }
  printf("\n");
 }

 sc->sc_device = qd = malloc(sizeof(struct quicc_device), M_QUICC,
     M_WAITOK | M_ZERO);

 qd->qd_devtype = QUICC_DEVTYPE_SCC;
 qd->qd_rman = &sc->sc_rman;
 resource_list_init(&qd->qd_rlist);

 resource_list_add(&qd->qd_rlist, sc->sc_rtype, 0, start,
     start + size - 1, size);

 resource_list_add(&qd->qd_rlist, SYS_RES_IRQ, 0, 0xf00, 0xf00, 1);
 rle = resource_list_find(&qd->qd_rlist, SYS_RES_IRQ, 0);
 rle->res = sc->sc_ires;

 qd->qd_dev = device_add_child(dev, ((void*)0), -1);
 device_set_ivars(qd->qd_dev, (void *)qd);
 error = device_probe_and_attach(qd->qd_dev);


 quicc_write4(sc->sc_rres, QUICC_REG_SIMR_L, 0x00f00000);


 quicc_write4(sc->sc_rres, QUICC_REG_SIPNR_H, ~0);
 quicc_write4(sc->sc_rres, QUICC_REG_SIPNR_L, ~0);
 return (error);
}
