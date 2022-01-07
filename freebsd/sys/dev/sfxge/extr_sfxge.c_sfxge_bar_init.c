
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * esb_res; int esb_handle; int esb_tag; int esb_rid; } ;
struct sfxge_softc {int dev; int mem_bar; TYPE_1__ bar; } ;
typedef TYPE_1__ efsys_bar_t ;


 int ENXIO ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SFXGE_BAR_LOCK_INIT (TYPE_1__*,int ) ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
sfxge_bar_init(struct sfxge_softc *sc)
{
 efsys_bar_t *esbp = &sc->bar;

 esbp->esb_rid = PCIR_BAR(sc->mem_bar);
 if ((esbp->esb_res = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &esbp->esb_rid, RF_ACTIVE)) == ((void*)0)) {
  device_printf(sc->dev, "Cannot allocate BAR region %d\n",
      sc->mem_bar);
  return (ENXIO);
 }
 esbp->esb_tag = rman_get_bustag(esbp->esb_res);
 esbp->esb_handle = rman_get_bushandle(esbp->esb_res);

 SFXGE_BAR_LOCK_INIT(esbp, device_get_nameunit(sc->dev));

 return (0);
}
