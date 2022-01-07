
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_mcdi {scalar_t__ state; int mem; int transport; } ;
struct sfxge_softc {struct sfxge_mcdi mcdi; int * enp; } ;
typedef int efx_nic_t ;
typedef int efx_mcdi_transport_t ;
typedef int efsys_mem_t ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_MCDI_INITIALIZED ;
 int SFXGE_MCDI_LOCK (struct sfxge_mcdi*) ;
 int SFXGE_MCDI_LOCK_DESTROY (struct sfxge_mcdi*) ;
 int SFXGE_MCDI_UNLOCK (struct sfxge_mcdi*) ;
 int bzero (int *,int) ;
 int efx_mcdi_fini (int *) ;
 int sfxge_dma_free (int *) ;

void
sfxge_mcdi_fini(struct sfxge_softc *sc)
{
 struct sfxge_mcdi *mcdi;
 efx_nic_t *enp;
 efx_mcdi_transport_t *emtp;
 efsys_mem_t *esmp;

 enp = sc->enp;
 mcdi = &sc->mcdi;
 emtp = &mcdi->transport;
 esmp = &mcdi->mem;

 SFXGE_MCDI_LOCK(mcdi);
 KASSERT(mcdi->state == SFXGE_MCDI_INITIALIZED,
     ("MCDI not initialized"));

 efx_mcdi_fini(enp);
 bzero(emtp, sizeof(*emtp));

 SFXGE_MCDI_UNLOCK(mcdi);

 sfxge_dma_free(esmp);

 SFXGE_MCDI_LOCK_DESTROY(mcdi);
}
