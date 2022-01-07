
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;
typedef int bus_addr_t ;


 scalar_t__ XSEM_REG_FAST_MEMORY ;
 scalar_t__ XSTORM_SPQ_PAGE_BASE_OFFSET (int ) ;
 int __storm_memset_dma_mapping (struct bxe_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
storm_memset_spq_addr(struct bxe_softc *sc,
                      bus_addr_t mapping,
                      uint16_t abs_fid)
{
    uint32_t addr = (XSEM_REG_FAST_MEMORY +
                     XSTORM_SPQ_PAGE_BASE_OFFSET(abs_fid));
    __storm_memset_dma_mapping(sc, addr, mapping);
}
