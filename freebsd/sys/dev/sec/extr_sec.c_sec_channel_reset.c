
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sec_softc {int sc_version; int sc_dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int SEC_CHAN_CCR (int) ;
 int SEC_CHAN_CCR_AWSE ;
 int SEC_CHAN_CCR_BS ;
 int SEC_CHAN_CCR_CDIE ;
 int SEC_CHAN_CCR_CDWE ;
 int SEC_CHAN_CCR_CON ;
 int SEC_CHAN_CCR_NT ;
 int SEC_CHAN_CCR_R ;
 int SEC_CHAN_CCR_WGN ;
 int SEC_READ (struct sec_softc*,int ) ;
 int SEC_TIMEOUT ;
 int SEC_WRITE (struct sec_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
sec_channel_reset(struct sec_softc *sc, int channel, int full)
{
 int timeout = SEC_TIMEOUT;
 uint64_t bit = (full) ? SEC_CHAN_CCR_R : SEC_CHAN_CCR_CON;
 uint64_t reg;


 reg = SEC_READ(sc, SEC_CHAN_CCR(channel));
 SEC_WRITE(sc, SEC_CHAN_CCR(channel), reg | bit);

 while (SEC_READ(sc, SEC_CHAN_CCR(channel)) & bit) {
  DELAY(1000);
  timeout -= 1000;

  if (timeout < 0) {
   device_printf(sc->sc_dev, "timeout while waiting for "
       "channel reset!\n");
   return (ETIMEDOUT);
  }
 }

 if (full) {
  reg = SEC_CHAN_CCR_CDIE | SEC_CHAN_CCR_NT | SEC_CHAN_CCR_BS;

  switch(sc->sc_version) {
  case 2:
   reg |= SEC_CHAN_CCR_CDWE;
   break;
  case 3:
   reg |= SEC_CHAN_CCR_AWSE | SEC_CHAN_CCR_WGN;
   break;
  }

  SEC_WRITE(sc, SEC_CHAN_CCR(channel), reg);
 }

 return (0);
}
