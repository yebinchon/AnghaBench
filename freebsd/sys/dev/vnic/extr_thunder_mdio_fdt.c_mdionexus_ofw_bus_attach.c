
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_softc {int scells; int acells; } ;
struct mdionexus_ofw_devinfo {int di_dinfo; int di_rl; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 int M_THUNDER_MDIO ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int * device_add_child (int *,int *,int) ;
 scalar_t__ device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,struct mdionexus_ofw_devinfo*) ;
 int free (struct mdionexus_ofw_devinfo*,int ) ;
 struct mdionexus_ofw_devinfo* malloc (int,int ,int) ;
 scalar_t__ mdionexus_ofw_fill_ranges (scalar_t__,struct simplebus_softc*) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int ofw_bus_intr_to_rl (int *,scalar_t__,int *,int *) ;
 int ofw_bus_reg_to_rl (int *,scalar_t__,int ,int ,int *) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 int simplebus_init (int *,scalar_t__) ;

__attribute__((used)) static int
mdionexus_ofw_bus_attach(device_t dev)
{
 struct simplebus_softc *sc;
 struct mdionexus_ofw_devinfo *di;
 device_t child;
 phandle_t parent, node;

 parent = ofw_bus_get_node(dev);
 simplebus_init(dev, parent);

 sc = (struct simplebus_softc *)device_get_softc(dev);

 if (mdionexus_ofw_fill_ranges(parent, sc) < 0) {
  device_printf(dev, "could not get ranges\n");
  return (ENXIO);
 }

 for (node = OF_child(parent); node > 0; node = OF_peer(node)) {

  di = malloc(sizeof(*di), M_THUNDER_MDIO, M_WAITOK | M_ZERO);
  if (ofw_bus_gen_setup_devinfo(&di->di_dinfo, node) != 0) {
   free(di, M_THUNDER_MDIO);
   continue;
  }


  resource_list_init(&di->di_rl);
  ofw_bus_reg_to_rl(dev, node, sc->acells, sc->scells,
      &di->di_rl);
  ofw_bus_intr_to_rl(dev, node, &di->di_rl, ((void*)0));


  child = device_add_child(dev, ((void*)0), -1);
  if (child == ((void*)0)) {
   resource_list_free(&di->di_rl);
   ofw_bus_gen_destroy_devinfo(&di->di_dinfo);
   free(di, M_THUNDER_MDIO);
   continue;
  }

  device_set_ivars(child, di);
 }

 return (0);
}
