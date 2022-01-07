
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hc_sp_status_block_data {int dummy; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_SP_STATUS_BLOCK_DATA_OFFSET (int ) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int SC_FUNC (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_wr_sp_sb_data(struct bxe_softc *sc,
                  struct hc_sp_status_block_data *sp_sb_data)
{
    int i;

    for (i = 0;
         i < (sizeof(struct hc_sp_status_block_data) / sizeof(uint32_t));
         i++) {
        REG_WR(sc,
               (BAR_CSTRORM_INTMEM +
                CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(SC_FUNC(sc)) +
                (i * sizeof(uint32_t))),
               *((uint32_t *)sp_sb_data + i));
    }
}
