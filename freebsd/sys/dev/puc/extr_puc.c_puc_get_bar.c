
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct puc_softc {int sc_dev; struct rman sc_iomem; struct rman sc_ioport; struct puc_bar* sc_bar; } ;
struct puc_bar {int b_rid; scalar_t__ b_type; int * b_res; } ;
typedef int rman_res_t ;


 int PUC_PCI_BARS ;
 int RF_ACTIVE ;
 scalar_t__ SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,scalar_t__,int*,int ) ;
 int bus_release_resource (int ,scalar_t__,int,int *) ;
 int rman_get_end (int *) ;
 int rman_get_start (int *) ;
 int rman_manage_region (struct rman*,int ,int ) ;

struct puc_bar *
puc_get_bar(struct puc_softc *sc, int rid)
{
 struct puc_bar *bar;
 struct rman *rm;
 rman_res_t end, start;
 int error, i;


 i = 0;
 while (i < PUC_PCI_BARS && sc->sc_bar[i].b_rid != rid)
  i++;
 if (i < PUC_PCI_BARS)
  return (&sc->sc_bar[i]);


 if (rid == -1)
  return (((void*)0));


 bar = puc_get_bar(sc, -1);
 if (bar == ((void*)0))
  return (((void*)0));
 bar->b_rid = rid;
 bar->b_type = SYS_RES_IOPORT;
 bar->b_res = bus_alloc_resource_any(sc->sc_dev, bar->b_type,
     &bar->b_rid, RF_ACTIVE);
 if (bar->b_res == ((void*)0)) {
  bar->b_rid = rid;
  bar->b_type = SYS_RES_MEMORY;
  bar->b_res = bus_alloc_resource_any(sc->sc_dev, bar->b_type,
      &bar->b_rid, RF_ACTIVE);
  if (bar->b_res == ((void*)0)) {
   bar->b_rid = -1;
   return (((void*)0));
  }
 }


 rm = (bar->b_type == SYS_RES_IOPORT) ? &sc->sc_ioport : &sc->sc_iomem;
 start = rman_get_start(bar->b_res);
 end = rman_get_end(bar->b_res);
 error = rman_manage_region(rm, start, end);
 if (error) {
  bus_release_resource(sc->sc_dev, bar->b_type, bar->b_rid,
      bar->b_res);
  bar->b_res = ((void*)0);
  bar->b_rid = -1;
  bar = ((void*)0);
 }

 return (bar);
}
