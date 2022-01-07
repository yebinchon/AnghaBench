
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int va_flags; } ;
struct creator_softc {int sc_node; TYPE_1__ sc_va; int ** sc_bt; int * sc_bh; int sc_flags; } ;
typedef int stdout ;
typedef int phandle_t ;
typedef char ihandle_t ;
typedef int bus_addr_t ;
typedef int buf ;


 int CREATOR_AFB ;
 int CREATOR_CONSOLE ;
 int CREATOR_DRIVER_NAME ;
 int FFB_DAC ;
 int FFB_FBC ;
 scalar_t__ OF_decode_addr (int,int,int*,int *) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_instance_to_package (char) ;
 int VIO_PROBE_ONLY ;
 int V_ADP_REGISTERED ;
 int * creator_bst_store ;
 scalar_t__ creator_init (int ,TYPE_1__*,int ) ;
 struct creator_softc creator_softc ;
 int sparc64_fake_bustag (int,int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ vid_find_adapter (int ,int) ;

__attribute__((used)) static int
creator_configure(int flags)
{
 struct creator_softc *sc;
 phandle_t chosen;
 phandle_t output;
 ihandle_t stdout;
 bus_addr_t addr;
 char buf[sizeof("SUNW,ffb")];
 int i;
 int space;





 if (!(flags & VIO_PROBE_ONLY)) {
  for (i = 0; vid_find_adapter(CREATOR_DRIVER_NAME, i) >= 0; i++)
   ;
  return (i);
 }



 sc = &creator_softc;
 if (sc->sc_va.va_flags & V_ADP_REGISTERED)
  goto found;

 if ((chosen = OF_finddevice("/chosen")) == -1)
  return (0);
 if (OF_getprop(chosen, "stdout", &stdout, sizeof(stdout)) == -1)
  return (0);
 if ((output = OF_instance_to_package(stdout)) == -1)
  return (0);
 if (OF_getprop(output, "name", buf, sizeof(buf)) == -1)
  return (0);
 if (strcmp(buf, "SUNW,ffb") == 0 || strcmp(buf, "SUNW,afb") == 0) {
  sc->sc_flags = CREATOR_CONSOLE;
  if (strcmp(buf, "SUNW,afb") == 0)
   sc->sc_flags |= CREATOR_AFB;
  sc->sc_node = output;
 } else
  return (0);

 for (i = FFB_DAC; i <= FFB_FBC; i++) {
  if (OF_decode_addr(output, i, &space, &addr) != 0)
   return (0);
  sc->sc_bt[i] = &creator_bst_store[i - FFB_DAC];
  sc->sc_bh[i] = sparc64_fake_bustag(space, addr, sc->sc_bt[i]);
 }

 if (creator_init(0, &sc->sc_va, 0) < 0)
  return (0);

 found:

 return (1);
}
