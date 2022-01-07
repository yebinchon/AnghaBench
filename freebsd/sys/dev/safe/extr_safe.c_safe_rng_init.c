
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct safe_softc {int dummy; } ;


 int DELAY (int) ;
 scalar_t__ READ_REG (struct safe_softc*,int ) ;
 int SAFE_RNG_ALM_CNT ;
 int SAFE_RNG_CNFG ;
 int SAFE_RNG_CTRL ;
 int SAFE_RNG_MAXWAIT ;
 int SAFE_RNG_OUT ;
 int WRITE_REG (struct safe_softc*,int ,int) ;

__attribute__((used)) static void
safe_rng_init(struct safe_softc *sc)
{
 u_int32_t w, v;
 int i;

 WRITE_REG(sc, SAFE_RNG_CTRL, 0);

 WRITE_REG(sc, SAFE_RNG_CNFG, 0x834);
 WRITE_REG(sc, SAFE_RNG_ALM_CNT, 0);
 i = 0;
 w = READ_REG(sc, SAFE_RNG_OUT);
 do {
  v = READ_REG(sc, SAFE_RNG_OUT);
  if (v != w) {
   w = v;
   break;
  }
  DELAY(10);
 } while (++i < SAFE_RNG_MAXWAIT);


 i = 0;
 do {
  v = READ_REG(sc, SAFE_RNG_OUT);
  if (v != w)
   break;
  DELAY(10);
 } while (++i < SAFE_RNG_MAXWAIT);
}
