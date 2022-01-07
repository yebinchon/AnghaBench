
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int va_flags; } ;
struct machfb_softc {int sc_flags; int sc_node; scalar_t__ sc_chip_rev; TYPE_2__ sc_va; int sc_regh; int sc_memh; int * sc_regt; int * sc_memt; scalar_t__ sc_chip_id; } ;
typedef int stdout ;
typedef int phandle_t ;
typedef scalar_t__ ihandle_t ;
typedef int id ;
typedef int bus_addr_t ;
struct TYPE_4__ {scalar_t__ chip_id; } ;


 scalar_t__ ATI_VENDOR ;
 int MACH64_REG_OFF ;
 int MACH64_REG_SIZE ;
 int MACHFB_CONSOLE ;
 int MACHFB_DRIVER_NAME ;
 scalar_t__ OF_decode_addr (int,int ,int*,int *) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,scalar_t__*,int) ;
 int OF_instance_to_package (scalar_t__) ;
 int VIO_PROBE_ONLY ;
 int V_ADP_REGISTERED ;
 int bus_space_subregion (int *,int ,int ,int ,int *) ;
 int * machfb_bst_store ;
 TYPE_1__* machfb_info ;
 scalar_t__ machfb_init (int ,TYPE_2__*,int ) ;
 struct machfb_softc machfb_softc ;
 int nitems (TYPE_1__*) ;
 int sparc64_fake_bustag (int,int ,int *) ;
 scalar_t__ vid_find_adapter (int ,int) ;

__attribute__((used)) static int
machfb_configure(int flags)
{
 struct machfb_softc *sc;
 phandle_t chosen, output;
 ihandle_t stdout;
 bus_addr_t addr;
 uint32_t id;
 int i, space;





 if (!(flags & VIO_PROBE_ONLY)) {
  for (i = 0; vid_find_adapter(MACHFB_DRIVER_NAME, i) >= 0; i++)
   ;
  return (i);
 }



 sc = &machfb_softc;
 if (sc->sc_va.va_flags & V_ADP_REGISTERED)
  goto found;

 if ((chosen = OF_finddevice("/chosen")) == -1)
  return (0);
 if (OF_getprop(chosen, "stdout", &stdout, sizeof(stdout)) == -1)
  return (0);
 if ((output = OF_instance_to_package(stdout)) == -1)
  return (0);
 if ((OF_getprop(output, "vendor-id", &id, sizeof(id)) == -1) ||
     id != ATI_VENDOR)
  return (0);
 if (OF_getprop(output, "device-id", &id, sizeof(id)) == -1)
  return (0);
 for (i = 0; i < nitems(machfb_info); i++) {
  if (id == machfb_info[i].chip_id) {
   sc->sc_flags = MACHFB_CONSOLE;
   sc->sc_node = output;
   sc->sc_chip_id = id;
   break;
  }
 }
 if (!(sc->sc_flags & MACHFB_CONSOLE))
  return (0);

 if (OF_getprop(output, "revision-id", &sc->sc_chip_rev,
     sizeof(sc->sc_chip_rev)) == -1)
  return (0);
 if (OF_decode_addr(output, 0, &space, &addr) != 0)
  return (0);
 sc->sc_memt = &machfb_bst_store[0];
 sc->sc_memh = sparc64_fake_bustag(space, addr, sc->sc_memt);
 sc->sc_regt = sc->sc_memt;
 bus_space_subregion(sc->sc_regt, sc->sc_memh, MACH64_REG_OFF,
     MACH64_REG_SIZE, &sc->sc_regh);

 if (machfb_init(0, &sc->sc_va, 0) < 0)
   return (0);

 found:

 return (1);
}
