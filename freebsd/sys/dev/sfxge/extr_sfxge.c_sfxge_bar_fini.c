
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esb_res; int esb_rid; } ;
struct sfxge_softc {int dev; TYPE_1__ bar; } ;
typedef TYPE_1__ efsys_bar_t ;


 int SFXGE_BAR_LOCK_DESTROY (TYPE_1__*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;

__attribute__((used)) static void
sfxge_bar_fini(struct sfxge_softc *sc)
{
 efsys_bar_t *esbp = &sc->bar;

 bus_release_resource(sc->dev, SYS_RES_MEMORY, esbp->esb_rid,
     esbp->esb_res);
 SFXGE_BAR_LOCK_DESTROY(esbp);
}
