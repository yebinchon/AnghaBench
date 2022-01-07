
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_imask; int sc_running; int sc_watchdog; int sc_dev; struct mwl_hal* sc_mh; } ;
struct mwl_hal {int dummy; } ;


 int EIO ;
 int MACREG_A2HRIC_BIT_BA_WATCHDOG ;
 int MACREG_A2HRIC_BIT_CHAN_SWITCH ;
 int MACREG_A2HRIC_BIT_ICV_ERROR ;
 int MACREG_A2HRIC_BIT_MAC_EVENT ;
 int MACREG_A2HRIC_BIT_OPC_DONE ;
 int MACREG_A2HRIC_BIT_QUEUE_EMPTY ;
 int MACREG_A2HRIC_BIT_RADAR_DETECT ;
 int MACREG_A2HRIC_BIT_RX_RDY ;
 int MACREG_A2HRIC_BIT_TX_DONE ;
 int MACREQ_A2HRIC_BIT_TX_ACK ;
 int MWL_LOCK_ASSERT (struct mwl_softc*) ;
 int callout_reset (int *,int ,int ,struct mwl_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mwl_hal_intrset (struct mwl_hal*,int) ;
 int mwl_hal_reset (struct mwl_softc*) ;
 int mwl_startrecv (struct mwl_softc*) ;
 int mwl_stop (struct mwl_softc*) ;
 int mwl_watchdog ;

__attribute__((used)) static int
mwl_init(struct mwl_softc *sc)
{
 struct mwl_hal *mh = sc->sc_mh;
 int error = 0;

 MWL_LOCK_ASSERT(sc);





 mwl_stop(sc);




 if (!mwl_hal_reset(sc)) {
  device_printf(sc->sc_dev, "unable to reset hardware\n");
  return EIO;
 }




 error = mwl_startrecv(sc);
 if (error != 0) {
  device_printf(sc->sc_dev, "unable to start recv logic\n");
  return error;
 }




 sc->sc_imask = MACREG_A2HRIC_BIT_RX_RDY
       | MACREG_A2HRIC_BIT_TX_DONE
       | MACREG_A2HRIC_BIT_OPC_DONE



       | MACREG_A2HRIC_BIT_ICV_ERROR
       | MACREG_A2HRIC_BIT_RADAR_DETECT
       | MACREG_A2HRIC_BIT_CHAN_SWITCH



       | MACREG_A2HRIC_BIT_BA_WATCHDOG
       | MACREQ_A2HRIC_BIT_TX_ACK
       ;

 sc->sc_running = 1;
 mwl_hal_intrset(mh, sc->sc_imask);
 callout_reset(&sc->sc_watchdog, hz, mwl_watchdog, sc);

 return 0;
}
