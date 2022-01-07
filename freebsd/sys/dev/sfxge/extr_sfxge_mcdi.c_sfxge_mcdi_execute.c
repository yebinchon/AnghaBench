
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sfxge_mcdi {scalar_t__ state; } ;
struct sfxge_softc {int enp; struct sfxge_mcdi mcdi; } ;
typedef int efx_mcdi_req_t ;


 int B_FALSE ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_MCDI_INITIALIZED ;
 int SFXGE_MCDI_LOCK (struct sfxge_mcdi*) ;
 int SFXGE_MCDI_UNLOCK (struct sfxge_mcdi*) ;
 int efx_mcdi_get_timeout (int ,int *,scalar_t__*) ;
 int efx_mcdi_request_start (int ,int *,int ) ;
 int sfxge_mcdi_poll (struct sfxge_softc*,scalar_t__) ;

__attribute__((used)) static void
sfxge_mcdi_execute(void *arg, efx_mcdi_req_t *emrp)
{
 struct sfxge_softc *sc;
 struct sfxge_mcdi *mcdi;
 uint32_t timeout_us = 0;

 sc = (struct sfxge_softc *)arg;
 mcdi = &sc->mcdi;

 SFXGE_MCDI_LOCK(mcdi);

 KASSERT(mcdi->state == SFXGE_MCDI_INITIALIZED,
     ("MCDI not initialized"));


 efx_mcdi_get_timeout(sc->enp, emrp, &timeout_us);
 KASSERT(timeout_us > 0, ("MCDI timeout not initialized"));

 efx_mcdi_request_start(sc->enp, emrp, B_FALSE);
 sfxge_mcdi_poll(sc, timeout_us);

 SFXGE_MCDI_UNLOCK(mcdi);
}
