
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pcie_ofw_devinfo {int di_dinfo; int di_rl; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int * device_add_child (int *,int *,int) ;
 int device_set_ivars (int *,struct generic_pcie_ofw_devinfo*) ;
 int free (struct generic_pcie_ofw_devinfo*,int ) ;
 int get_addr_size_cells (scalar_t__,int *,int *) ;
 struct generic_pcie_ofw_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int ofw_bus_intr_to_rl (int *,scalar_t__,int *,int *) ;
 int ofw_bus_reg_to_rl (int *,scalar_t__,int ,int ,int *) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;

__attribute__((used)) static int
generic_pcie_ofw_bus_attach(device_t dev)
{
 struct generic_pcie_ofw_devinfo *di;
 device_t child;
 phandle_t parent, node;
 pcell_t addr_cells, size_cells;

 parent = ofw_bus_get_node(dev);
 if (parent > 0) {
  get_addr_size_cells(parent, &addr_cells, &size_cells);

  for (node = OF_child(parent); node > 0; node = OF_peer(node)) {


   di = malloc(sizeof(*di), M_DEVBUF, M_WAITOK | M_ZERO);
   if (ofw_bus_gen_setup_devinfo(&di->di_dinfo, node) != 0) {
    free(di, M_DEVBUF);
    continue;
   }


   resource_list_init(&di->di_rl);
   ofw_bus_reg_to_rl(dev, node, addr_cells, size_cells,
       &di->di_rl);
   ofw_bus_intr_to_rl(dev, node, &di->di_rl, ((void*)0));


   child = device_add_child(dev, ((void*)0), -1);
   if (child == ((void*)0)) {
    resource_list_free(&di->di_rl);
    ofw_bus_gen_destroy_devinfo(&di->di_dinfo);
    free(di, M_DEVBUF);
    continue;
   }

   device_set_ivars(child, di);
  }
 }

 return (0);
}
