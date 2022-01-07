
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 int BLOGD (struct bxe_softc*,int ,char*,int ,int ,int ,int ) ;
 scalar_t__ CSTORM_STATUS_BLOCK_DATA_TIMEOUT_OFFSET (int ,int ) ;
 int DBG_LOAD ;
 int REG_WR8 (struct bxe_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
bxe_storm_memset_hc_timeout(struct bxe_softc *sc,
                            uint8_t port,
                            uint8_t fw_sb_id,
                            uint8_t sb_index,
                            uint8_t ticks)
{
    uint32_t addr =
        (BAR_CSTRORM_INTMEM +
         CSTORM_STATUS_BLOCK_DATA_TIMEOUT_OFFSET(fw_sb_id, sb_index));

    REG_WR8(sc, addr, ticks);

    BLOGD(sc, DBG_LOAD,
          "port %d fw_sb_id %d sb_index %d ticks %d\n",
          port, fw_sb_id, sb_index, ticks);
}
