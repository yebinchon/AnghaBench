
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_dev; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int DELAY (int) ;
 int XL_EE_BUSY ;
 int XL_W0_EE_CMD ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
xl_eeprom_wait(struct xl_softc *sc)
{
 int i;

 for (i = 0; i < 100; i++) {
  if (CSR_READ_2(sc, XL_W0_EE_CMD) & XL_EE_BUSY)
   DELAY(162);
  else
   break;
 }

 if (i == 100) {
  device_printf(sc->xl_dev, "eeprom failed to come ready\n");
  return (1);
 }

 return (0);
}
