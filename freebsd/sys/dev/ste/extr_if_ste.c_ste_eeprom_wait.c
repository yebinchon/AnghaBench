
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int ste_dev; } ;


 int CSR_READ_2 (struct ste_softc*,int ) ;
 int DELAY (int) ;
 int STE_EECTL_BUSY ;
 int STE_EEPROM_CTL ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ste_eeprom_wait(struct ste_softc *sc)
{
 int i;

 DELAY(1000);

 for (i = 0; i < 100; i++) {
  if (CSR_READ_2(sc, STE_EEPROM_CTL) & STE_EECTL_BUSY)
   DELAY(1000);
  else
   break;
 }

 if (i == 100) {
  device_printf(sc->ste_dev, "eeprom failed to come ready\n");
  return (1);
 }

 return (0);
}
