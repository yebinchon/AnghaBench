
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_STATUS_BLOCK_DATA_OFFSET (int) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

__attribute__((used)) static void
bxe_wr_fp_sb_data(struct bxe_softc *sc,
                  int fw_sb_id,
                  uint32_t *sb_data_p,
                  uint32_t data_size)
{
    int index;

    for (index = 0; index < data_size; index++) {
        REG_WR(sc,
               (BAR_CSTRORM_INTMEM +
                CSTORM_STATUS_BLOCK_DATA_OFFSET(fw_sb_id) +
                (sizeof(uint32_t) * index)),
               *(sb_data_p + index));
    }
}
