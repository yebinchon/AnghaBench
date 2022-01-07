
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_cpulist_softc {int sc_addr_cells; } ;
struct ofw_bus_devinfo {int obd_name; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int M_OFWCPU ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,int*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 struct ofw_cpulist_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct ofw_bus_devinfo*) ;
 int free (struct ofw_bus_devinfo*,int ) ;
 struct ofw_bus_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (struct ofw_bus_devinfo*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (struct ofw_bus_devinfo*,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;

__attribute__((used)) static int
ofw_cpulist_attach(device_t dev)
{
 struct ofw_cpulist_softc *sc;
 phandle_t root, child;
 device_t cdev;
 struct ofw_bus_devinfo *dinfo;

 sc = device_get_softc(dev);
 root = ofw_bus_get_node(dev);

 sc->sc_addr_cells = 1;
 OF_getencprop(root, "#address-cells", &sc->sc_addr_cells,
     sizeof(sc->sc_addr_cells));

 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_OFWCPU, M_WAITOK | M_ZERO);

                if (ofw_bus_gen_setup_devinfo(dinfo, child) != 0) {
                        free(dinfo, M_OFWCPU);
                        continue;
                }
                cdev = device_add_child(dev, ((void*)0), -1);
                if (cdev == ((void*)0)) {
                        device_printf(dev, "<%s>: device_add_child failed\n",
                            dinfo->obd_name);
                        ofw_bus_gen_destroy_devinfo(dinfo);
                        free(dinfo, M_OFWCPU);
                        continue;
                }
  device_set_ivars(cdev, dinfo);
 }

 return (bus_generic_attach(dev));
}
