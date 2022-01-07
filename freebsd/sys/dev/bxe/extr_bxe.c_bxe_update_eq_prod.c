
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 int SC_FUNC (struct bxe_softc*) ;
 int storm_memset_eq_prod (struct bxe_softc*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void
bxe_update_eq_prod(struct bxe_softc *sc,
                   uint16_t prod)
{
    storm_memset_eq_prod(sc, prod, SC_FUNC(sc));
    wmb();
}
