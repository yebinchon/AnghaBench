
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esm_base; } ;
struct sfxge_intr {scalar_t__ state; int type; TYPE_1__ status; } ;
struct sfxge_softc {int enp; struct sfxge_intr intr; } ;
typedef TYPE_1__ efsys_mem_t ;


 int EFX_INTR_SIZE ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 scalar_t__ SFXGE_INTR_STARTED ;
 int efx_intr_enable (int ) ;
 int efx_intr_fini (int ) ;
 int efx_intr_init (int ,int ,TYPE_1__*) ;
 int memset (int ,int ,int ) ;
 int sfxge_intr_bus_enable (struct sfxge_softc*) ;

int
sfxge_intr_start(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 efsys_mem_t *esmp;
 int rc;

 intr = &sc->intr;
 esmp = &intr->status;

 KASSERT(intr->state == SFXGE_INTR_INITIALIZED,
     ("Interrupts not initialized"));


 (void)memset(esmp->esm_base, 0, EFX_INTR_SIZE);


 (void)efx_intr_init(sc->enp, intr->type, esmp);


 if ((rc = sfxge_intr_bus_enable(sc)) != 0)
  goto fail;

 intr->state = SFXGE_INTR_STARTED;


 efx_intr_enable(sc->enp);

 return (0);

fail:

 efx_intr_fini(sc->enp);

 intr->state = SFXGE_INTR_INITIALIZED;

 return (rc);
}
