
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct tstorm_eth_mac_filter_config {int dummy; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ TSTORM_MAC_FILTER_CONFIG_OFFSET (int ) ;
 int ecore_storm_memset_struct (struct bxe_softc*,scalar_t__,size_t,scalar_t__*) ;

__attribute__((used)) static inline void __storm_memset_mac_filters(struct bxe_softc *sc,
   struct tstorm_eth_mac_filter_config *mac_filters,
   uint16_t pf_id)
{
 size_t size = sizeof(struct tstorm_eth_mac_filter_config);

 uint32_t addr = BAR_TSTRORM_INTMEM +
   TSTORM_MAC_FILTER_CONFIG_OFFSET(pf_id);

 ecore_storm_memset_struct(sc, addr, size, (uint32_t *)mac_filters);
}
