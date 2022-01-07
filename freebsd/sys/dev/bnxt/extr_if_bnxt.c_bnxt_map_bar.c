
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bnxt_softc {int dev; } ;
struct bnxt_bar_info {int * res; int size; int handle; int tag; int rid; } ;


 int EDOOFUS ;
 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int device_printf (int ,char*,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;

__attribute__((used)) static int
bnxt_map_bar(struct bnxt_softc *softc, struct bnxt_bar_info *bar, int bar_num, bool shareable)
{
 uint32_t flag;

 if (bar->res != ((void*)0)) {
  device_printf(softc->dev, "Bar %d already mapped\n", bar_num);
  return EDOOFUS;
 }

 bar->rid = PCIR_BAR(bar_num);
 flag = RF_ACTIVE;
 if (shareable)
  flag |= RF_SHAREABLE;

 if ((bar->res =
  bus_alloc_resource_any(softc->dev,
      SYS_RES_MEMORY,
      &bar->rid,
      flag)) == ((void*)0)) {
  device_printf(softc->dev,
      "PCI BAR%d mapping failure\n", bar_num);
  return (ENXIO);
 }
 bar->tag = rman_get_bustag(bar->res);
 bar->handle = rman_get_bushandle(bar->res);
 bar->size = rman_get_size(bar->res);

 return 0;
}
