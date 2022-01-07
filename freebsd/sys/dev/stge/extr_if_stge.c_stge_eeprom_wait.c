
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int dummy; } ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 int DELAY (int) ;
 int EC_EepromBusy ;
 int STGE_EepromCtrl ;
 int STGE_TIMEOUT ;

__attribute__((used)) static int
stge_eeprom_wait(struct stge_softc *sc)
{
 int i;

 for (i = 0; i < STGE_TIMEOUT; i++) {
  DELAY(1000);
  if ((CSR_READ_2(sc, STGE_EepromCtrl) & EC_EepromBusy) == 0)
   return (0);
 }
 return (1);
}
