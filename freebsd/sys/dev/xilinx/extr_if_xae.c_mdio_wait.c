
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int dummy; } ;


 int DELAY (int) ;
 int MDIO_CTRL_READY ;
 int READ4 (struct xae_softc*,int ) ;
 int XAE_MDIO_CTRL ;
 int printf (char*) ;

__attribute__((used)) static int
mdio_wait(struct xae_softc *sc)
{
 uint32_t reg;
 int timeout;

 timeout = 200;

 do {
  reg = READ4(sc, XAE_MDIO_CTRL);
  if (reg & MDIO_CTRL_READY)
   break;
  DELAY(1);
 } while (timeout--);

 if (timeout <= 0) {
  printf("Failed to get MDIO ready\n");
  return (1);
 }

 return (0);
}
