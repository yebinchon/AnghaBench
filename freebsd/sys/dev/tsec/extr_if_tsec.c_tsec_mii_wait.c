
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {int dummy; } ;


 int DELAY (int ) ;
 int TSEC_PHY_READ (struct tsec_softc*,int ) ;
 int TSEC_READ_DELAY ;
 int TSEC_READ_RETRY ;
 int TSEC_REG_MIIMIND ;

__attribute__((used)) static int
tsec_mii_wait(struct tsec_softc *sc, uint32_t flags)
{
 int timeout;





 TSEC_PHY_READ(sc, TSEC_REG_MIIMIND);

 timeout = TSEC_READ_RETRY;
 while ((TSEC_PHY_READ(sc, TSEC_REG_MIIMIND) & flags) && --timeout)
  DELAY(TSEC_READ_DELAY);

 return (timeout == 0);
}
