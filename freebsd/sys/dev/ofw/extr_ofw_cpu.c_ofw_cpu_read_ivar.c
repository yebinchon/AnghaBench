
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_cpulist_softc {uintptr_t sc_addr_cells; } ;
struct ofw_cpu_softc {int sc_reg; int sc_reg_valid; int sc_nominal_mhz; int sc_cpu_pcpu; } ;
typedef int device_t ;






 int ENOENT ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ofw_cpu_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct ofw_cpulist_softc *psc;
 struct ofw_cpu_softc *sc;

 sc = device_get_softc(dev);

 switch (index) {
 case 128:
  *result = (uintptr_t)sc->sc_cpu_pcpu;
  return (0);
 case 129:
  if (sc->sc_nominal_mhz > 0) {
   *result = (uintptr_t)sc->sc_nominal_mhz;
   return (0);
  }
  break;
 case 130:
  psc = device_get_softc(device_get_parent(dev));
  *result = psc->sc_addr_cells;
  return (0);
 case 131:
  if (sc->sc_reg_valid) {
   *result = (uintptr_t)sc->sc_reg;
   return (0);
  }
  break;
 }

 return (ENOENT);
}
