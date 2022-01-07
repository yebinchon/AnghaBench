
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 int BAR_CSTRORM_INTMEM ;
 int BLOGD (struct bxe_softc*,int ,char*,int,int ,int,int) ;
 int CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET (int ,int) ;
 int DBG_LOAD ;
 int HC_INDEX_DATA_HC_ENABLED ;
 int HC_INDEX_DATA_HC_ENABLED_SHIFT ;
 int REG_RD8 (struct bxe_softc*,int) ;
 int REG_WR8 (struct bxe_softc*,int,int) ;

__attribute__((used)) static void
bxe_storm_memset_hc_disable(struct bxe_softc *sc,
                            uint8_t port,
                            uint16_t fw_sb_id,
                            uint8_t sb_index,
                            uint8_t disable)
{
    uint32_t enable_flag =
        (disable) ? 0 : (1 << HC_INDEX_DATA_HC_ENABLED_SHIFT);
    uint32_t addr =
        (BAR_CSTRORM_INTMEM +
         CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET(fw_sb_id, sb_index));
    uint8_t flags;


    flags = REG_RD8(sc, addr);
    flags &= ~HC_INDEX_DATA_HC_ENABLED;
    flags |= enable_flag;
    REG_WR8(sc, addr, flags);

    BLOGD(sc, DBG_LOAD,
          "port %d fw_sb_id %d sb_index %d disable %d\n",
          port, fw_sb_id, sb_index, disable);
}
