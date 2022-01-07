
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_3__ {char* rm_descr; int rm_type; } ;
struct iobus_softc {scalar_t__ sc_node; void* sc_addr; void* sc_size; TYPE_1__ sc_mem_rman; } ;
struct iobus_devinfo {char* id_name; scalar_t__ id_node; int id_resources; } ;
typedef int reg ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 int M_IOBUS ;
 int M_WAITOK ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop (scalar_t__,char*,void**,int) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 int RMAN_ARRAY ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 struct iobus_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,struct iobus_devinfo*) ;
 int iobus_add_intr (scalar_t__,struct iobus_devinfo*) ;
 int iobus_add_reg (scalar_t__,struct iobus_devinfo*,void*) ;
 struct iobus_devinfo* malloc (int,int ,int ) ;
 int memset (struct iobus_devinfo*,int ,int) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int resource_list_init (int *) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int ,void*) ;

__attribute__((used)) static int
iobus_attach(device_t dev)
{
 struct iobus_softc *sc;
        struct iobus_devinfo *dinfo;
        phandle_t root;
        phandle_t child;
        device_t cdev;
        char *name;
 u_int reg[2];
 int size;

 sc = device_get_softc(dev);
 sc->sc_node = ofw_bus_get_node(dev);





 size = OF_getprop(sc->sc_node, "reg", reg, sizeof(reg));
 if (size == sizeof(reg)) {
  sc->sc_addr = reg[0];
  sc->sc_size = reg[1];
 } else {
  return (ENXIO);
 }

 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
        sc->sc_mem_rman.rm_descr = "IOBus Device Memory";
        if (rman_init(&sc->sc_mem_rman) != 0) {
  device_printf(dev,
                    "failed to init mem range resources\n");
                return (ENXIO);
 }
 rman_manage_region(&sc->sc_mem_rman, 0, sc->sc_size);




        root = sc->sc_node;

        for (child = OF_child(root); child != 0; child = OF_peer(child)) {
                OF_getprop_alloc(child, "name", (void **)&name);

                cdev = device_add_child(dev, ((void*)0), -1);
                if (cdev != ((void*)0)) {
                        dinfo = malloc(sizeof(*dinfo), M_IOBUS, M_WAITOK);
   memset(dinfo, 0, sizeof(*dinfo));
   resource_list_init(&dinfo->id_resources);
                        dinfo->id_node = child;
                        dinfo->id_name = name;
   iobus_add_intr(child, dinfo);
   iobus_add_reg(child, dinfo, sc->sc_addr);
                        device_set_ivars(cdev, dinfo);
                } else {
                        OF_prop_free(name);
                }
        }

        return (bus_generic_attach(dev));
}
