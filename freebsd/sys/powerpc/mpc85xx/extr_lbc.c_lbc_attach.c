
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int uintmax_t ;
struct rman {char* rm_descr; int rm_end; int rm_start; int rm_type; } ;
struct lbc_softc {int sc_addr_cells; int sc_size_cells; int * sc_mres; scalar_t__ sc_mrid; TYPE_1__* sc_banks; struct rman sc_rman; int sc_ltesr; int * sc_ires; scalar_t__ sc_irid; int sc_icookie; int sc_bsh; int sc_bst; int * sc_dev; } ;
struct TYPE_5__ {int obd_name; } ;
struct lbc_devinfo {TYPE_2__ di_ofw; int di_res; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;
struct TYPE_4__ {int addr; int size; int width; scalar_t__ wp; int atom; int decc; int msel; } ;


 int ENXIO ;
 int ERANGE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LBC85XX_BR (int) ;
 int LBC85XX_LBCR ;
 int LBC85XX_LCRR ;
 int LBC85XX_LTEDR ;
 int LBC85XX_LTEIR ;
 int LBC85XX_LTESR ;
 int LBC85XX_OR (int) ;
 int LBCRES_ATOM_DISABLED ;
 int LBCRES_DECC_DISABLED ;
 int LBCRES_MSEL_GPCM ;
 int LBC_DEV_MAX ;
 int M_LBC ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_child (int ) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_peer (int ) ;
 int OF_prop_free (int*) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int *,int ,scalar_t__*,int) ;
 int bus_generic_attach (int *) ;
 int bus_release_resource (int *,int ,scalar_t__,int *) ;
 int bus_setup_intr (int *,int *,int,int *,int ,struct lbc_softc*,int *) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int debugf (char*,int,int,...) ;
 int * device_add_child (int *,int *,int) ;
 struct lbc_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,struct lbc_devinfo*) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 int fdt_data_get (void*,int) ;
 int fdt_lbc_fixup (int ,struct lbc_softc*,struct lbc_devinfo*) ;
 scalar_t__ fdt_lbc_reg_decode (int ,struct lbc_softc*,struct lbc_devinfo*) ;
 int fdt_parent_addr_cells (int ) ;
 int free (struct lbc_devinfo*,int ) ;
 int lbc_banks_enable (struct lbc_softc*) ;
 int lbc_banks_map (struct lbc_softc*) ;
 int lbc_intr ;
 struct lbc_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_2__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_2__*,int ) ;
 int ofw_bus_get_node (int *) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 int rman_fini (struct rman*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_init (struct rman*) ;
 int rman_manage_region (struct rman*,int ,int ) ;

__attribute__((used)) static int
lbc_attach(device_t dev)
{
 struct lbc_softc *sc;
 struct lbc_devinfo *di;
 struct rman *rm;
 uintmax_t offset, size;
 vm_paddr_t start;
 device_t cdev;
 phandle_t node, child;
 pcell_t *ranges, *rangesptr;
 int tuple_size, tuples;
 int par_addr_cells;
 int bank, error, i, j;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_mrid = 0;
 sc->sc_mres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_mrid,
     RF_ACTIVE);
 if (sc->sc_mres == ((void*)0))
  return (ENXIO);

 sc->sc_bst = rman_get_bustag(sc->sc_mres);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mres);

 for (bank = 0; bank < LBC_DEV_MAX; bank++) {
  bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_BR(bank), 0);
  bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_OR(bank), 0);
 }
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LBCR, 0);







 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LCRR, 0x00030008);

 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LTEDR, 0);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR, ~0);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, LBC85XX_LTEIR, 0x64080001);

 sc->sc_irid = 0;
 sc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_ires != ((void*)0)) {
  error = bus_setup_intr(dev, sc->sc_ires,
      INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), lbc_intr, sc,
      &sc->sc_icookie);
  if (error) {
   device_printf(dev, "could not activate interrupt\n");
   bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
       sc->sc_ires);
   sc->sc_ires = ((void*)0);
  }
 }

 sc->sc_ltesr = ~0;

 rangesptr = ((void*)0);

 rm = &sc->sc_rman;
 rm->rm_type = RMAN_ARRAY;
 rm->rm_descr = "Local Bus Space";
 error = rman_init(rm);
 if (error)
  goto fail;

 error = rman_manage_region(rm, rm->rm_start, rm->rm_end);
 if (error) {
  rman_fini(rm);
  goto fail;
 }




 node = ofw_bus_get_node(dev);
 if ((fdt_addrsize_cells(node, &sc->sc_addr_cells,
     &sc->sc_size_cells)) != 0) {
  error = ENXIO;
  goto fail;
 }

 par_addr_cells = fdt_parent_addr_cells(node);
 if (par_addr_cells > 2) {
  device_printf(dev, "unsupported parent #addr-cells\n");
  error = ERANGE;
  goto fail;
 }
 tuple_size = sizeof(pcell_t) * (sc->sc_addr_cells + par_addr_cells +
     sc->sc_size_cells);

 tuples = OF_getencprop_alloc_multi(node, "ranges", tuple_size,
     (void **)&ranges);
 if (tuples < 0) {
  device_printf(dev, "could not retrieve 'ranges' property\n");
  error = ENXIO;
  goto fail;
 }
 rangesptr = ranges;

 debugf("par addr_cells = %d, addr_cells = %d, size_cells = %d, "
     "tuple_size = %d, tuples = %d\n", par_addr_cells,
     sc->sc_addr_cells, sc->sc_size_cells, tuple_size, tuples);

 start = 0;
 size = 0;
 for (i = 0; i < tuples; i++) {


  bank = fdt_data_get(ranges, 1);
  if (bank < 0 || bank > LBC_DEV_MAX) {
   device_printf(dev, "bank out of range: %d\n", bank);
   error = ERANGE;
   goto fail;
  }
  ranges += 1;





  offset = 0;
  for (j = 0; j < sc->sc_addr_cells - 1; j++) {
   offset <<= sizeof(pcell_t) * 8;
   offset |= *ranges;
   ranges++;
  }


  start = 0;
  for (j = 0; j < par_addr_cells; j++) {
   start <<= sizeof(pcell_t) * 8;
   start |= *ranges;
   ranges++;
  }

  size = fdt_data_get((void *)ranges, sc->sc_size_cells);
  ranges += sc->sc_size_cells;
  debugf("bank = %d, start = %jx, size = %jx\n", bank,
      (uintmax_t)start, size);

  sc->sc_banks[bank].addr = start + offset;
  sc->sc_banks[bank].size = size;







  sc->sc_banks[bank].width = 16;
  sc->sc_banks[bank].msel = LBCRES_MSEL_GPCM;
  sc->sc_banks[bank].decc = LBCRES_DECC_DISABLED;
  sc->sc_banks[bank].atom = LBCRES_ATOM_DISABLED;
  sc->sc_banks[bank].wp = 0;
 }




 error = lbc_banks_map(sc);
 if (error)
  goto fail;




 for (child = OF_child(node); child != 0; child = OF_peer(child)) {

  di = malloc(sizeof(*di), M_LBC, M_WAITOK | M_ZERO);

  if (ofw_bus_gen_setup_devinfo(&di->di_ofw, child) != 0) {
   free(di, M_LBC);
   device_printf(dev, "could not set up devinfo\n");
   continue;
  }

  resource_list_init(&di->di_res);

  if (fdt_lbc_reg_decode(child, sc, di)) {
   device_printf(dev, "could not process 'reg' "
       "property\n");
   ofw_bus_gen_destroy_devinfo(&di->di_ofw);
   free(di, M_LBC);
   continue;
  }

  fdt_lbc_fixup(child, sc, di);


  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(dev, "could not add child: %s\n",
       di->di_ofw.obd_name);
   resource_list_free(&di->di_res);
   ofw_bus_gen_destroy_devinfo(&di->di_ofw);
   free(di, M_LBC);
   continue;
  }
  debugf("added child name='%s', node=%x\n", di->di_ofw.obd_name,
      child);
  device_set_ivars(cdev, di);
 }




 lbc_banks_enable(sc);

 OF_prop_free(rangesptr);
 return (bus_generic_attach(dev));

fail:
 OF_prop_free(rangesptr);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_mrid, sc->sc_mres);
 return (error);
}
