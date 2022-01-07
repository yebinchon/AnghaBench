
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct generic_pcie_core_softc {struct rman mem_rman; struct rman io_rman; } ;





__attribute__((used)) static struct rman *
generic_pcie_rman(struct generic_pcie_core_softc *sc, int type)
{

 switch (type) {
 case 129:
  return (&sc->io_rman);
 case 128:
  return (&sc->mem_rman);
 default:
  break;
 }

 return (((void*)0));
}
