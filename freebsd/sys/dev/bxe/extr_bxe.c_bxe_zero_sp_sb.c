
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf_valid; } ;
struct hc_sp_status_block_data {TYPE_1__ p_func; int state; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_SP_STATUS_BLOCK_OFFSET (int ) ;
 int CSTORM_SP_STATUS_BLOCK_SIZE ;
 scalar_t__ CSTORM_SP_SYNC_BLOCK_OFFSET (int ) ;
 int CSTORM_SP_SYNC_BLOCK_SIZE ;
 int FALSE ;
 int SB_DISABLED ;
 int SC_FUNC (struct bxe_softc*) ;
 int bxe_fill (struct bxe_softc*,scalar_t__,int ,int ) ;
 int bxe_wr_sp_sb_data (struct bxe_softc*,struct hc_sp_status_block_data*) ;
 int memset (struct hc_sp_status_block_data*,int ,int) ;

__attribute__((used)) static void
bxe_zero_sp_sb(struct bxe_softc *sc)
{
    struct hc_sp_status_block_data sp_sb_data;

    memset(&sp_sb_data, 0, sizeof(struct hc_sp_status_block_data));

    sp_sb_data.state = SB_DISABLED;
    sp_sb_data.p_func.vf_valid = FALSE;

    bxe_wr_sp_sb_data(sc, &sp_sb_data);

    bxe_fill(sc,
             (BAR_CSTRORM_INTMEM +
              CSTORM_SP_STATUS_BLOCK_OFFSET(SC_FUNC(sc))),
              0, CSTORM_SP_STATUS_BLOCK_SIZE);
    bxe_fill(sc,
             (BAR_CSTRORM_INTMEM +
              CSTORM_SP_SYNC_BLOCK_OFFSET(SC_FUNC(sc))),
              0, CSTORM_SP_SYNC_BLOCK_SIZE);
}
