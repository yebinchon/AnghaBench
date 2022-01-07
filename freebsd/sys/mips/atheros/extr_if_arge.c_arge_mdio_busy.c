
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arge_softc {int dummy; } ;


 int AR71XX_MAC_MII_INDICATOR ;
 int ARGE_MDIO_BARRIER_READ (struct arge_softc*) ;
 int ARGE_MDIO_READ (struct arge_softc*,int ) ;
 int ARGE_MII_TIMEOUT ;
 int DELAY (int) ;

__attribute__((used)) static int
arge_mdio_busy(struct arge_softc *sc)
{
 int i,result;

 for (i = 0; i < ARGE_MII_TIMEOUT; i++) {
  DELAY(5);
  ARGE_MDIO_BARRIER_READ(sc);
  result = ARGE_MDIO_READ(sc, AR71XX_MAC_MII_INDICATOR);
  if (! result)
   return (0);
  DELAY(5);
 }
 return (-1);
}
