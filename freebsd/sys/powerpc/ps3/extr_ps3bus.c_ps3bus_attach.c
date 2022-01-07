
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {char* rm_descr; void* rm_type; } ;
struct ps3bus_softc {TYPE_1__ sc_mem_rman; int rcount; int regions; TYPE_1__ sc_intr_rman; } ;
struct ps3bus_devinfo {int bus; int dev; int bustype; int devtype; int busidx; int devidx; int iommu_mtx; } ;
typedef int * device_t ;


 int EHCI_IRQ ;
 int EHCI_REG ;
 int MTX_DEF ;
 int M_PS3BUS ;
 int M_WAITOK ;
 int M_ZERO ;
 int OHCI_IRQ ;
 int OHCI_REG ;
 int PS3_BUSTYPE_STORAGE ;
 int PS3_BUSTYPE_SYSBUS ;

 int PS3_LPAR_ID_PME ;
 void* RMAN_ARRAY ;
 int bus_generic_attach (int *) ;
 int clock_register (int *,int) ;
 int * device_add_child (int *,char*,int) ;
 struct ps3bus_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,struct ps3bus_devinfo*) ;
 int free (struct ps3bus_devinfo*,int ) ;
 int lv1_get_repository_node_value (int ,int,int,int,int ,int*,int*) ;
 int lv1_open_device (int,int,int ) ;
 int lv1_repository_string (char*) ;
 struct ps3bus_devinfo* malloc (int,int ,int) ;
 int mem_regions (int *,int *,int *,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ps3bus_resources_init (TYPE_1__*,int,int,struct ps3bus_devinfo*) ;
 int ps3bus_resources_init_by_type (TYPE_1__*,int,int,int ,int ,struct ps3bus_devinfo*) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
ps3bus_attach(device_t self)
{
 struct ps3bus_softc *sc;
 struct ps3bus_devinfo *dinfo;
 int bus_index, dev_index, result;
 uint64_t bustype, bus, devs;
 uint64_t dev, devtype;
 uint64_t junk;
 device_t cdev;

 sc = device_get_softc(self);
 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "PS3Bus Memory Mapped I/O";
 sc->sc_intr_rman.rm_type = RMAN_ARRAY;
 sc->sc_intr_rman.rm_descr = "PS3Bus Interrupts";
 rman_init(&sc->sc_mem_rman);
 rman_init(&sc->sc_intr_rman);
 rman_manage_region(&sc->sc_intr_rman, 0, ~0);


 mem_regions(&sc->regions, &sc->rcount, ((void*)0), ((void*)0));





 for (bus_index = 0; bus_index < 5; bus_index++) {
  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("type"), 0, 0, &bustype, &junk);

  if (result != 0)
   continue;

  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("id"), 0, 0, &bus, &junk);

  if (result != 0)
   continue;

  result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("num_dev"), 0, 0, &devs, &junk);

  for (dev_index = 0; dev_index < devs; dev_index++) {
   result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
       (lv1_repository_string("bus") >> 32) | bus_index,
       lv1_repository_string("dev") | dev_index,
       lv1_repository_string("type"), 0, &devtype, &junk);

   if (result != 0)
    continue;

   result = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
       (lv1_repository_string("bus") >> 32) | bus_index,
       lv1_repository_string("dev") | dev_index,
       lv1_repository_string("id"), 0, &dev, &junk);

   if (result != 0)
    continue;

   switch (devtype) {
   case 128:


    lv1_open_device(bus, dev, 0);



    dinfo = malloc(sizeof(*dinfo), M_PS3BUS,
        M_WAITOK | M_ZERO);

    dinfo->bus = bus;
    dinfo->dev = dev;
    dinfo->bustype = bustype;
    dinfo->devtype = devtype;
    dinfo->busidx = bus_index;
    dinfo->devidx = dev_index;

    ps3bus_resources_init_by_type(&sc->sc_mem_rman, bus_index,
        dev_index, OHCI_IRQ, OHCI_REG, dinfo);

    cdev = device_add_child(self, "ohci", -1);
    if (cdev == ((void*)0)) {
     device_printf(self,
         "device_add_child failed\n");
     free(dinfo, M_PS3BUS);
     continue;
    }

    mtx_init(&dinfo->iommu_mtx, "iommu", ((void*)0), MTX_DEF);
    device_set_ivars(cdev, dinfo);



    dinfo = malloc(sizeof(*dinfo), M_PS3BUS,
        M_WAITOK | M_ZERO);

    dinfo->bus = bus;
    dinfo->dev = dev;
    dinfo->bustype = bustype;
    dinfo->devtype = devtype;
    dinfo->busidx = bus_index;
    dinfo->devidx = dev_index;

    ps3bus_resources_init_by_type(&sc->sc_mem_rman, bus_index,
        dev_index, EHCI_IRQ, EHCI_REG, dinfo);

    cdev = device_add_child(self, "ehci", -1);
    if (cdev == ((void*)0)) {
     device_printf(self,
         "device_add_child failed\n");
     free(dinfo, M_PS3BUS);
     continue;
    }

    mtx_init(&dinfo->iommu_mtx, "iommu", ((void*)0), MTX_DEF);
    device_set_ivars(cdev, dinfo);
    break;
   default:
    dinfo = malloc(sizeof(*dinfo), M_PS3BUS,
        M_WAITOK | M_ZERO);

    dinfo->bus = bus;
    dinfo->dev = dev;
    dinfo->bustype = bustype;
    dinfo->devtype = devtype;
    dinfo->busidx = bus_index;
    dinfo->devidx = dev_index;

    if (dinfo->bustype == PS3_BUSTYPE_SYSBUS ||
        dinfo->bustype == PS3_BUSTYPE_STORAGE)
     lv1_open_device(bus, dev, 0);

    ps3bus_resources_init(&sc->sc_mem_rman, bus_index,
        dev_index, dinfo);

    cdev = device_add_child(self, ((void*)0), -1);
    if (cdev == ((void*)0)) {
     device_printf(self,
         "device_add_child failed\n");
     free(dinfo, M_PS3BUS);
     continue;
    }

    mtx_init(&dinfo->iommu_mtx, "iommu", ((void*)0), MTX_DEF);
    device_set_ivars(cdev, dinfo);
   }
  }
 }

 clock_register(self, 1000);

 return (bus_generic_attach(self));
}
