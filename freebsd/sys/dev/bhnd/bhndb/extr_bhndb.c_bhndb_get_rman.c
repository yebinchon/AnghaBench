
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rman {int dummy; } ;
struct bhndb_softc {TYPE_1__* bus_res; } ;
typedef int device_t ;
struct TYPE_2__ {struct rman br_irq_rman; struct rman br_mem_rman; struct rman ht_mem_rman; } ;






 int bhndb_get_addrspace (struct bhndb_softc*,int ) ;

__attribute__((used)) static struct rman *
bhndb_get_rman(struct bhndb_softc *sc, device_t child, int type)
{
 switch (bhndb_get_addrspace(sc, child)) {
 case 130:
  switch (type) {
  case 128:
   return (&sc->bus_res->ht_mem_rman);
  case 129:
   return (((void*)0));
  default:
   return (((void*)0));
  }

 case 131:
  switch (type) {
  case 128:
   return (&sc->bus_res->br_mem_rman);
  case 129:
   return (&sc->bus_res->br_irq_rman);
  default:
   return (((void*)0));
  }
 }


 return (((void*)0));
}
