
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;


 int DELAY (int) ;
 int E6000SW_RETRIES ;
 int e6000sw_readreg (int *,int,int) ;

__attribute__((used)) static int
e6000sw_waitready(e6000sw_softc_t *sc, uint32_t phy, uint32_t reg,
    uint32_t busybit)
{
 int i;

 for (i = 0; i < E6000SW_RETRIES; i++) {
  if ((e6000sw_readreg(sc, phy, reg) & busybit) == 0)
   return (0);
  DELAY(1);
 }

 return (1);
}
