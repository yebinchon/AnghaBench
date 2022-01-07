
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct cs4231_softc {int sc_dev; } ;


 int AUTO_CAL_ENABLE ;
 int AUTO_CAL_IN_PROG ;
 int CODEC_COLD_RESET ;
 int CS4231_IADDR ;
 int CS4231_IDATA ;
 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_LOCK_ASSERT (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_CLOCK_DATA_FORMAT ;
 int CS_INTERFACE_CONFIG ;
 int CS_IN_INIT ;
 int CS_READ (struct cs4231_softc*,int ) ;
 int CS_REC_FORMAT ;
 int CS_TEST_AND_INIT ;
 int CS_TIMEOUT ;
 int CS_WRITE (struct cs4231_softc*,int ,int) ;
 int DELAY (int) ;
 int MODE_CHANGE_ENABLE ;
 int PCMDIR_REC ;
 int cs4231_disable (struct cs4231_softc*) ;
 int cs4231_enable (struct cs4231_softc*,int ) ;
 int cs4231_read (struct cs4231_softc*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ mixer_reinit (int ) ;

__attribute__((used)) static void
cs4231_chan_fs(struct cs4231_softc *sc, int dir, u_int8_t fs)
{
 int i, doreset;




 CS4231_LOCK_ASSERT(sc);


 doreset = 0;
 CS_WRITE(sc, CS4231_IADDR, MODE_CHANGE_ENABLE | CS_CLOCK_DATA_FORMAT);
 CS_WRITE(sc, CS4231_IDATA, fs);
 CS_READ(sc, CS4231_IDATA);
 CS_READ(sc, CS4231_IDATA);
 for (i = CS_TIMEOUT;
     i && CS_READ(sc, CS4231_IADDR) == CS_IN_INIT; i--)
  DELAY(10);
 if (i == 0) {
  device_printf(sc->sc_dev, "timeout setting playback speed\n");
  doreset++;
 }






 if (dir == PCMDIR_REC) {
  CS_WRITE(sc, CS4231_IADDR, MODE_CHANGE_ENABLE | CS_REC_FORMAT);
  CS_WRITE(sc, CS4231_IDATA, fs);
  CS_READ(sc, CS4231_IDATA);
  CS_READ(sc, CS4231_IDATA);
  for (i = CS_TIMEOUT;
      i && CS_READ(sc, CS4231_IADDR) == CS_IN_INIT; i--)
   DELAY(10);
  if (i == 0) {
   device_printf(sc->sc_dev,
       "timeout setting capture format\n");
   doreset++;
  }
 }

 CS_WRITE(sc, CS4231_IADDR, 0);
 for (i = CS_TIMEOUT;
     i && CS_READ(sc, CS4231_IADDR) == CS_IN_INIT; i--)
  DELAY(10);
 if (i == 0) {
  device_printf(sc->sc_dev, "timeout waiting for !MCE\n");
  doreset++;
 }
 if (doreset) {





  device_printf(sc->sc_dev, "trying to hardware reset\n");
  cs4231_disable(sc);
  cs4231_enable(sc, CODEC_COLD_RESET);
  CS4231_UNLOCK(sc);
  if (mixer_reinit(sc->sc_dev) != 0)
   device_printf(sc->sc_dev,
       "unable to reinitialize the mixer\n");
  CS4231_LOCK(sc);
 }
}
