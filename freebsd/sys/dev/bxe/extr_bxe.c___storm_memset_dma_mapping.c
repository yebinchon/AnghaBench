
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int bus_addr_t ;


 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;

__attribute__((used)) static void
__storm_memset_dma_mapping(struct bxe_softc *sc,
                           uint32_t addr,
                           bus_addr_t mapping)
{
    REG_WR(sc, addr, U64_LO(mapping));
    REG_WR(sc, (addr + 4), U64_HI(mapping));
}
