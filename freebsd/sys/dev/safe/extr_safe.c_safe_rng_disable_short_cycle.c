
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_softc {int dummy; } ;


 int READ_REG (struct safe_softc*,int ) ;
 int SAFE_RNG_CTRL ;
 int SAFE_RNG_CTRL_SHORTEN ;
 int WRITE_REG (struct safe_softc*,int ,int) ;

__attribute__((used)) static __inline void
safe_rng_disable_short_cycle(struct safe_softc *sc)
{
 WRITE_REG(sc, SAFE_RNG_CTRL,
  READ_REG(sc, SAFE_RNG_CTRL) &~ SAFE_RNG_CTRL_SHORTEN);
}
