
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct atkbdc_device {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;
struct TYPE_9__ {int retry; int * port0; int * port1; } ;
typedef TYPE_1__ atkbdc_softc_t ;
struct TYPE_10__ {int resources; int rid; } ;
typedef TYPE_2__ atkbdc_device_t ;


 char* ATKBD_DRIVER_NAME ;
 int ENOMEM ;
 int ENXIO ;
 int KBDC_RID_AUX ;
 int KBDC_RID_KBD ;
 scalar_t__ KBD_STATUS_PORT ;
 int M_ATKBDDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ OF_child (int ) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 char* PSM_DRIVER_NAME ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int atkbdc_attach_unit (int,TYPE_1__*,int *,int *) ;
 TYPE_1__* atkbdc_get_softc (int) ;
 void* bus_alloc_resource (int *,int ,int*,scalar_t__,scalar_t__,int,int ) ;
 int bus_generic_attach (int *) ;
 scalar_t__ bus_get_resource (int *,int ,int,scalar_t__*,scalar_t__*) ;
 scalar_t__ bus_get_resource_start (int *,int ,int ) ;
 int bus_release_resource (int *,int ,int,int *) ;
 int * device_add_child (int *,char*,int) ;
 scalar_t__ device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int device_set_softc (int *,TYPE_1__*) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int,int ,int) ;
 int ofw_bus_get_node (int *) ;
 int resource_list_add (int *,int ,int ,scalar_t__,scalar_t__,int) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
atkbdc_ebus_attach(device_t dev)
{
 atkbdc_softc_t *sc;
 atkbdc_device_t *adi;
 device_t cdev;
 phandle_t child;
 rman_res_t count, intr, start;
 int children, error, rid, unit;
 char *cname, *dname;

 unit = device_get_unit(dev);
 sc = *(atkbdc_softc_t **)device_get_softc(dev);
 if (sc == ((void*)0)) {







  sc = atkbdc_get_softc(unit);
  if (sc == ((void*)0))
   return (ENOMEM);
  device_set_softc(dev, sc);
 }

 rid = 0;
 if (bus_get_resource(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
  device_printf(dev,
      "cannot determine command/data port resource\n");
  return (ENXIO);
 }
 sc->retry = 5000;
 sc->port0 = bus_alloc_resource(dev, SYS_RES_MEMORY, &rid, start, start,
     1, RF_ACTIVE);
 if (sc->port0 == ((void*)0)) {
  device_printf(dev,
      "cannot allocate command/data port resource\n");
  return (ENXIO);
 }

 rid = 1;
 if (bus_get_resource(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
  device_printf(dev, "cannot determine status port resource\n");
  error = ENXIO;
  goto fail_port0;
 }
 start += KBD_STATUS_PORT;
 sc->port1 = bus_alloc_resource(dev, SYS_RES_MEMORY, &rid, start, start,
     1, RF_ACTIVE);
 if (sc->port1 == ((void*)0)) {
  device_printf(dev, "cannot allocate status port resource\n");
  error = ENXIO;
  goto fail_port0;
 }

 error = atkbdc_attach_unit(unit, sc, sc->port0, sc->port1);
 if (error != 0) {
  device_printf(dev, "atkbdc_attach_unit failed\n");
  goto fail_port1;
 }


 children = 0;
 for (child = OF_child(ofw_bus_get_node(dev)); child != 0;
     child = OF_peer(child)) {
  if ((OF_getprop_alloc(child, "name", (void **)&cname)) == -1)
   continue;
  if (children >= 2) {
   device_printf(dev,
       "<%s>: only two children per 8042 supported\n",
       cname);
   OF_prop_free(cname);
   continue;
  }
  adi = malloc(sizeof(struct atkbdc_device), M_ATKBDDEV,
      M_NOWAIT | M_ZERO);
  if (adi == ((void*)0)) {
   device_printf(dev, "<%s>: malloc failed\n", cname);
   OF_prop_free(cname);
   continue;
  }
  if (strcmp(cname, "kb_ps2") == 0) {
   adi->rid = KBDC_RID_KBD;
   dname = ATKBD_DRIVER_NAME;
  } else if (strcmp(cname, "kdmouse") == 0) {
   adi->rid = KBDC_RID_AUX;
   dname = PSM_DRIVER_NAME;
  } else {
   device_printf(dev, "<%s>: unknown device\n", cname);
   free(adi, M_ATKBDDEV);
   OF_prop_free(cname);
   continue;
  }
  intr = bus_get_resource_start(dev, SYS_RES_IRQ, adi->rid);
  if (intr == 0) {
   device_printf(dev,
       "<%s>: cannot determine interrupt resource\n",
       cname);
   free(adi, M_ATKBDDEV);
   OF_prop_free(cname);
   continue;
  }
  resource_list_init(&adi->resources);
  resource_list_add(&adi->resources, SYS_RES_IRQ, adi->rid,
      intr, intr, 1);
  if ((cdev = device_add_child(dev, dname, -1)) == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       cname);
   resource_list_free(&adi->resources);
   free(adi, M_ATKBDDEV);
   OF_prop_free(cname);
   continue;
  }
  device_set_ivars(cdev, adi);
  children++;
 }

 error = bus_generic_attach(dev);
 if (error != 0) {
  device_printf(dev, "bus_generic_attach failed\n");
  goto fail_port1;
 }

 return (0);

 fail_port1:
 bus_release_resource(dev, SYS_RES_MEMORY, 1, sc->port1);
 fail_port0:
 bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->port0);

 return (error);
}
