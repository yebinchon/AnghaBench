
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct tstorm_eth_function_common_config {int dummy; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ TSTORM_FUNCTION_COMMON_CONFIG_OFFSET (int ) ;
 int ecore_storm_memset_struct (struct bxe_softc*,scalar_t__,size_t,scalar_t__*) ;

__attribute__((used)) static void
storm_memset_func_cfg(struct bxe_softc *sc,
                      struct tstorm_eth_function_common_config *tcfg,
                      uint16_t abs_fid)
{
    uint32_t addr;
    size_t size;

    addr = (BAR_TSTRORM_INTMEM +
            TSTORM_FUNCTION_COMMON_CONFIG_OFFSET(abs_fid));
    size = sizeof(struct tstorm_eth_function_common_config);
    ecore_storm_memset_struct(sc, addr, size, (uint32_t *)tcfg);
}
