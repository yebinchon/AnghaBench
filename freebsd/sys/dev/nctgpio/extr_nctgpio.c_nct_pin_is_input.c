
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ior; } ;
struct nct_softc {TYPE_1__ cache; } ;


 int nct_get_pin_cache (struct nct_softc*,int ,int ) ;

__attribute__((used)) static bool
nct_pin_is_input(struct nct_softc *sc, uint32_t pin_num)
{
 return (nct_get_pin_cache(sc, pin_num, sc->cache.ior));
}
