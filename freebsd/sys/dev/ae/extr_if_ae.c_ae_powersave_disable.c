
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ae_softc_t ;


 int AE_LOCK_ASSERT (int *) ;
 int AE_PHY_DBG_ADDR ;
 int AE_PHY_DBG_DATA ;
 int AE_PHY_DBG_POWERSAVE ;
 int AE_PHY_READ (int *,int ) ;
 int AE_PHY_WRITE (int *,int ,int) ;
 int DELAY (int) ;

__attribute__((used)) static void
ae_powersave_disable(ae_softc_t *sc)
{
 uint32_t val;

 AE_LOCK_ASSERT(sc);

 AE_PHY_WRITE(sc, AE_PHY_DBG_ADDR, 0);
 val = AE_PHY_READ(sc, AE_PHY_DBG_DATA);
 if (val & AE_PHY_DBG_POWERSAVE) {
  val &= ~AE_PHY_DBG_POWERSAVE;
  AE_PHY_WRITE(sc, AE_PHY_DBG_DATA, val);
  DELAY(1000);
 }
}
