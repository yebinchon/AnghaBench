
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct safe_softc {int dummy; } ;


 scalar_t__ READ_REG (struct safe_softc*,int ) ;
 int SAFE_RNG_MAXWAIT ;
 int SAFE_RNG_OUT ;
 int SAFE_RNG_STAT ;

__attribute__((used)) static __inline u_int32_t
safe_rng_read(struct safe_softc *sc)
{
 int i;

 i = 0;
 while (READ_REG(sc, SAFE_RNG_STAT) != 0 && ++i < SAFE_RNG_MAXWAIT)
  ;
 return READ_REG(sc, SAFE_RNG_OUT);
}
