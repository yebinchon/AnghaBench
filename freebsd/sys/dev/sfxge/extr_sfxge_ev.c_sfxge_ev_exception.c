
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sfxge_softc {int dev; } ;
struct sfxge_evq {int exception; int index; struct sfxge_softc* sc; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DBGPRINT (int ,char*,int ,char*) ;
 scalar_t__ EFX_EXCEPTION_EV_ERROR ;
 scalar_t__ EFX_EXCEPTION_FWALERT_SRAM ;
 scalar_t__ EFX_EXCEPTION_RX_DSC_ERROR ;
 scalar_t__ EFX_EXCEPTION_RX_ERROR ;
 scalar_t__ EFX_EXCEPTION_RX_RECOVERY ;
 scalar_t__ EFX_EXCEPTION_TX_DSC_ERROR ;
 scalar_t__ EFX_EXCEPTION_TX_ERROR ;
 scalar_t__ EFX_EXCEPTION_UNKNOWN_FWALERT ;
 scalar_t__ EFX_EXCEPTION_UNKNOWN_SENSOREVT ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 int device_printf (int ,char*,scalar_t__) ;
 int sfxge_schedule_reset (struct sfxge_softc*) ;

__attribute__((used)) static boolean_t
sfxge_ev_exception(void *arg, uint32_t code, uint32_t data)
{
 struct sfxge_evq *evq;
 struct sfxge_softc *sc;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 sc = evq->sc;

 DBGPRINT(sc->dev, "[%d] %s", evq->index,
     (code == EFX_EXCEPTION_RX_RECOVERY) ? "RX_RECOVERY" :
     (code == EFX_EXCEPTION_RX_DSC_ERROR) ? "RX_DSC_ERROR" :
     (code == EFX_EXCEPTION_TX_DSC_ERROR) ? "TX_DSC_ERROR" :
     (code == EFX_EXCEPTION_UNKNOWN_SENSOREVT) ? "UNKNOWN_SENSOREVT" :
     (code == EFX_EXCEPTION_FWALERT_SRAM) ? "FWALERT_SRAM" :
     (code == EFX_EXCEPTION_UNKNOWN_FWALERT) ? "UNKNOWN_FWALERT" :
     (code == EFX_EXCEPTION_RX_ERROR) ? "RX_ERROR" :
     (code == EFX_EXCEPTION_TX_ERROR) ? "TX_ERROR" :
     (code == EFX_EXCEPTION_EV_ERROR) ? "EV_ERROR" :
     "UNKNOWN");

 evq->exception = B_TRUE;

 if (code != EFX_EXCEPTION_UNKNOWN_SENSOREVT) {
  device_printf(sc->dev,
         "hardware exception (code=%u); resetting\n",
         code);
  sfxge_schedule_reset(sc);
 }

 return (B_FALSE);
}
