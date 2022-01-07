
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocs_softc {TYPE_1__* reg; } ;
typedef int device_t ;
struct TYPE_2__ {int * res; int bhandle; int btag; int rid; } ;


 int ENXIO ;
 int PCIR_BAR (int ) ;
 int PCI_64BIT_BAR0 ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int device_printf (int ,char*,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
ocs_map_bars(device_t dev, struct ocs_softc *ocs)
{





 ocs->reg[0].rid = PCIR_BAR(PCI_64BIT_BAR0);
 ocs->reg[0].res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
   &ocs->reg[0].rid, RF_ACTIVE);

 if (ocs->reg[0].res == ((void*)0)) {
  device_printf(dev, "bus_alloc_resource failed rid=%#x\n",
    ocs->reg[0].rid);
  return ENXIO;
 }

 ocs->reg[0].btag = rman_get_bustag(ocs->reg[0].res);
 ocs->reg[0].bhandle = rman_get_bushandle(ocs->reg[0].res);
 return 0;
}
