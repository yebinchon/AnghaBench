
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_EVENT_RING_PROD_OFFSET (int ) ;
 int REG_WR16 (struct bxe_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
storm_memset_eq_prod(struct bxe_softc *sc,
                     uint16_t eq_prod,
                     uint16_t pfid)
{
    uint32_t addr = (BAR_CSTRORM_INTMEM +
                     CSTORM_EVENT_RING_PROD_OFFSET(pfid));
    REG_WR16(sc, addr, eq_prod);
}
