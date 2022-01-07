
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct ofw_pci_softc {struct rman sc_mem_rman; struct rman sc_pmem_rman; int sc_have_pmem; struct rman sc_io_rman; } ;


 int RF_PREFETCHABLE ;



__attribute__((used)) static struct rman *
ofw_pci_get_rman(struct ofw_pci_softc *sc, int type, u_int flags)
{

 switch (type) {
 case 129:
  return (&sc->sc_io_rman);
 case 128:
  if (sc->sc_have_pmem && (flags & RF_PREFETCHABLE))
   return (&sc->sc_pmem_rman);
  else
   return (&sc->sc_mem_rman);
 default:
  break;
 }

 return (((void*)0));
}
