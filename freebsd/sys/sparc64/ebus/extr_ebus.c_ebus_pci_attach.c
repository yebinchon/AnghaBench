
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct isa_ranges {scalar_t__ size; } ;
struct ebus_softc {int sc_nrange; scalar_t__ sc_range; struct ebus_rinfo* sc_rinfo; int sc_flags; } ;
struct TYPE_3__ {char* rm_descr; int rm_type; } ;
struct ebus_rinfo {struct resource* eri_res; int eri_rtype; TYPE_1__ eri_rman; } ;
typedef int phandle_t ;
typedef int device_t ;


 int EBUS_PCI ;
 int ENXIO ;
 scalar_t__ ISA_RANGE_PHYS (struct isa_ranges*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_getprop_alloc_multi (int ,char*,int,scalar_t__*) ;
 int OF_prop_free (scalar_t__) ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_BAR (int) ;
 int PCIR_CACHELNSZ ;
 int PCIR_COMMAND ;
 int PCIR_LATTIMER ;
 int RF_ACTIVE ;
 int RMAN_ARRAY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 struct ebus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ebus_attach (int ,struct ebus_softc*,int ) ;
 int free (struct ebus_rinfo*,int ) ;
 struct ebus_rinfo* malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int ofw_isa_range_restype (struct isa_ranges*) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int rman_fini (TYPE_1__*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 scalar_t__ rman_init_from_resource (TYPE_1__*,struct resource*) ;

__attribute__((used)) static int
ebus_pci_attach(device_t dev)
{
 struct ebus_softc *sc;
 struct ebus_rinfo *eri;
 struct resource *res;
 struct isa_ranges *range;
 phandle_t node;
 int i, rnum, rid;

 sc = device_get_softc(dev);
 sc->sc_flags |= EBUS_PCI;

 pci_write_config(dev, PCIR_COMMAND,
     pci_read_config(dev, PCIR_COMMAND, 2) | PCIM_CMD_SERRESPEN |
     PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN, 2);
 pci_write_config(dev, PCIR_CACHELNSZ, 16 , 1);
 pci_write_config(dev, PCIR_LATTIMER, 64 , 1);

 node = ofw_bus_get_node(dev);
 sc->sc_nrange = OF_getprop_alloc_multi(node, "ranges",
     sizeof(struct isa_ranges), &sc->sc_range);
 if (sc->sc_nrange == -1) {
  device_printf(dev, "could not get ranges property\n");
  return (ENXIO);
 }

 sc->sc_rinfo = malloc(sizeof(*sc->sc_rinfo) * sc->sc_nrange, M_DEVBUF,
     M_WAITOK | M_ZERO);


 for (rnum = 0; rnum < sc->sc_nrange; rnum++) {
  eri = &sc->sc_rinfo[rnum];
  range = &((struct isa_ranges *)sc->sc_range)[rnum];
  eri->eri_rtype = ofw_isa_range_restype(range);
  rid = PCIR_BAR(rnum);
  res = bus_alloc_resource_any(dev, eri->eri_rtype, &rid,
      RF_ACTIVE);
  if (res == ((void*)0)) {
   device_printf(dev,
       "could not allocate range resource %d\n", rnum);
   goto fail;
  }
  if (rman_get_start(res) != ISA_RANGE_PHYS(range)) {
   device_printf(dev,
       "mismatch in start of range %d (0x%lx/0x%lx)\n",
       rnum, rman_get_start(res), ISA_RANGE_PHYS(range));
   goto fail;
  }
  if (rman_get_size(res) != range->size) {
   device_printf(dev,
       "mismatch in size of range %d (0x%lx/0x%x)\n",
       rnum, rman_get_size(res), range->size);
   goto fail;
  }
  eri->eri_res = res;
  eri->eri_rman.rm_type = RMAN_ARRAY;
  eri->eri_rman.rm_descr = "EBus range";
  if (rman_init_from_resource(&eri->eri_rman, res) != 0) {
   device_printf(dev,
       "could not initialize rman for range %d", rnum);
   goto fail;
  }
 }
 return (ebus_attach(dev, sc, node));

 fail:
 for (i = rnum; i >= 0; i--) {
  eri = &sc->sc_rinfo[i];
  if (i < rnum)
   rman_fini(&eri->eri_rman);
  if (eri->eri_res != ((void*)0)) {
   bus_release_resource(dev, eri->eri_rtype,
       PCIR_BAR(rnum), eri->eri_res);
  }
 }
 free(sc->sc_rinfo, M_DEVBUF);
 OF_prop_free(sc->sc_range);
 return (ENXIO);
}
