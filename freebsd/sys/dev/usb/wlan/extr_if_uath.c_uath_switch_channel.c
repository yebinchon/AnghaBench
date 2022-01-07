
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_dev; } ;
struct ieee80211_channel {int dummy; } ;


 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int device_printf (int ,char*,int) ;
 int uath_flush (struct uath_softc*) ;
 int uath_reset_tx_queues (struct uath_softc*) ;
 int uath_set_chan (struct uath_softc*,struct ieee80211_channel*) ;
 int uath_set_ledstate (struct uath_softc*,int ) ;
 int uath_wme_init (struct uath_softc*) ;

__attribute__((used)) static int
uath_switch_channel(struct uath_softc *sc, struct ieee80211_channel *c)
{
 int error;

 UATH_ASSERT_LOCKED(sc);


 error = uath_set_chan(sc, c);
 if (error) {
  device_printf(sc->sc_dev,
      "could not set channel, error %d\n", error);
  goto failed;
 }

 error = uath_reset_tx_queues(sc);
 if (error) {
  device_printf(sc->sc_dev,
      "could not reset Tx queues, error %d\n", error);
  goto failed;
 }

 error = uath_wme_init(sc);
 if (error) {
  device_printf(sc->sc_dev,
      "could not init Tx queues, error %d\n", error);
  goto failed;
 }
 error = uath_set_ledstate(sc, 0);
 if (error) {
  device_printf(sc->sc_dev,
      "could not set led state, error %d\n", error);
  goto failed;
 }
 error = uath_flush(sc);
 if (error) {
  device_printf(sc->sc_dev,
      "could not flush pipes, error %d\n", error);
  goto failed;
 }
failed:
 return (error);
}
