
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int dummy; } ;


 int ETIMEDOUT ;
 int RT2573_BBP_BUSY ;
 int RT2573_PHY_CSR3 ;
 int hz ;
 scalar_t__ rum_pause (struct rum_softc*,int) ;
 int rum_read (struct rum_softc*,int ) ;

__attribute__((used)) static int
rum_bbp_busy(struct rum_softc *sc)
{
 int ntries;

 for (ntries = 0; ntries < 100; ntries++) {
  if (!(rum_read(sc, RT2573_PHY_CSR3) & RT2573_BBP_BUSY))
   break;
  if (rum_pause(sc, hz / 100))
   break;
 }
 if (ntries == 100)
  return (ETIMEDOUT);

 return (0);
}
