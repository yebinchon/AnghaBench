
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef char u_int ;
struct TYPE_5__ {char* rm_descr; int rm_type; } ;
struct unin_chip_softc {char sc_physaddr; char sc_size; char sc_version; scalar_t__ sc_addr; TYPE_1__ sc_mem_rman; } ;
struct TYPE_6__ {int obd_name; } ;
struct unin_chip_devinfo {size_t udi_ninterrupts; char* udi_interrupts; TYPE_3__ udi_obdinfo; int udi_resources; } ;
typedef int scells ;
typedef int reg ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef int iparent ;
typedef int * device_t ;
typedef int compat ;
typedef int cell_t ;
typedef int acells ;


 int ENXIO ;
 char MAP_IRQ (scalar_t__,int ) ;
 int M_UNIN ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 int OF_getprop (scalar_t__,char*,...) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int PAGE_SIZE ;
 int RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 struct unin_chip_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,struct unin_chip_devinfo*) ;
 int free (struct unin_chip_devinfo*,int ) ;
 struct unin_chip_devinfo* malloc (int,int ,int) ;
 int memset (char*,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_3__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_3__*,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 scalar_t__ pmap_mapdev (int,int ) ;
 int resource_list_add (int *,int ,size_t,char,char,int) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,char,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int * unin_chip ;
 int unin_chip_add_intr (scalar_t__,struct unin_chip_devinfo*) ;
 int unin_chip_add_reg (scalar_t__,struct unin_chip_devinfo*) ;
 int unin_enable_gmac (int *) ;
 int unin_enable_mpic (int *) ;

__attribute__((used)) static int
unin_chip_attach(device_t dev)
{
 struct unin_chip_softc *sc;
 struct unin_chip_devinfo *dinfo;
 phandle_t root;
 phandle_t child;
 phandle_t iparent;
 device_t cdev;
 cell_t acells, scells;
 char compat[32];
 char name[32];
 u_int irq, reg[3];
 int error, i = 0;

 sc = device_get_softc(dev);
 root = ofw_bus_get_node(dev);

 if (OF_getprop(root, "reg", reg, sizeof(reg)) < 8)
  return (ENXIO);

 acells = scells = 1;
 OF_getprop(OF_parent(root), "#address-cells", &acells, sizeof(acells));
 OF_getprop(OF_parent(root), "#size-cells", &scells, sizeof(scells));

 i = 0;
 sc->sc_physaddr = reg[i++];
 if (acells == 2) {
  sc->sc_physaddr <<= 32;
  sc->sc_physaddr |= reg[i++];
 }
 sc->sc_size = reg[i++];
 if (scells == 2) {
  sc->sc_size <<= 32;
  sc->sc_size |= reg[i++];
 }

 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "UniNorth Device Memory";

 error = rman_init(&sc->sc_mem_rman);

 if (error) {
  device_printf(dev, "rman_init() failed. error = %d\n", error);
  return (error);
 }

 error = rman_manage_region(&sc->sc_mem_rman, sc->sc_physaddr,
       sc->sc_physaddr + sc->sc_size - 1);
 if (error) {
  device_printf(dev,
         "rman_manage_region() failed. error = %d\n",
         error);
  return (error);
 }

 if (unin_chip == ((void*)0))
  unin_chip = dev;




 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_UNIN, M_WAITOK | M_ZERO);
  if (ofw_bus_gen_setup_devinfo(&dinfo->udi_obdinfo, child)
      != 0)
  {
   free(dinfo, M_UNIN);
   continue;
  }

  resource_list_init(&dinfo->udi_resources);
  dinfo->udi_ninterrupts = 0;
  unin_chip_add_intr(child, dinfo);
  if (OF_getprop(child, "name", name, sizeof(name)) <= 0)
   device_printf(dev, "device has no name!\n");
  if (dinfo->udi_ninterrupts == 0 &&
      (strcmp(name, "i2c-bus") == 0 ||
       strcmp(name, "i2c") == 0)) {
   if (OF_getprop(child, "interrupt-parent", &iparent,
           sizeof(iparent)) <= 0) {
    iparent = OF_finddevice("/u3/mpic");
    device_printf(dev, "Set /u3/mpic as iparent!\n");
   }

   irq = MAP_IRQ(iparent, 0);
   resource_list_add(&dinfo->udi_resources, SYS_RES_IRQ,
       dinfo->udi_ninterrupts, irq, irq, 1);
   dinfo->udi_interrupts[dinfo->udi_ninterrupts] = irq;
   dinfo->udi_ninterrupts++;
  }

  unin_chip_add_reg(child, dinfo);

  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
          dinfo->udi_obdinfo.obd_name);
   resource_list_free(&dinfo->udi_resources);
   ofw_bus_gen_destroy_devinfo(&dinfo->udi_obdinfo);
   free(dinfo, M_UNIN);
   continue;
  }

  device_set_ivars(cdev, dinfo);
 }





 sc->sc_addr = (vm_offset_t)pmap_mapdev(sc->sc_physaddr, PAGE_SIZE);

 sc->sc_version = *(u_int *)sc->sc_addr;
 device_printf(dev, "Version %d\n", sc->sc_version);





 for (child = OF_child(root); child; child = OF_peer(child)) {
  memset(compat, 0, sizeof(compat));
  OF_getprop(child, "compatible", compat, sizeof(compat));
  if (strcmp(compat, "gmac") == 0)
   unin_enable_gmac(dev);
  if (strcmp(compat, "chrp,open-pic") == 0)
   unin_enable_mpic(dev);
 }




 child = OF_finddevice("enet");
 memset(compat, 0, sizeof(compat));
 OF_getprop(child, "compatible", compat, sizeof(compat));
 if (strcmp(compat, "gmac") == 0)
  unin_enable_gmac(dev);

 return (bus_generic_attach(dev));
}
