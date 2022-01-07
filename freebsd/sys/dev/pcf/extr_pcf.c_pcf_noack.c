
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {int dummy; } ;


 int DELAY (int) ;
 int LRB ;
 int PCF_ASSERT_LOCKED (struct pcf_softc*) ;
 int pcf_get_S1 (struct pcf_softc*) ;

__attribute__((used)) static int
pcf_noack(struct pcf_softc *sc, int timeout)
{
 int noack;
 int k = timeout/10;

 PCF_ASSERT_LOCKED(sc);
 do {
  noack = pcf_get_S1(sc) & LRB;
  if (!noack)
   break;
  DELAY(10);
 } while (k--);

 return (noack);
}
