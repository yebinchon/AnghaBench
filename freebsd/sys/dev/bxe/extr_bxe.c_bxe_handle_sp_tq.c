
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bxe_softc {int def_att_idx; int igu_dsb_id; int def_idx; } ;


 int ATTENTION_ID ;
 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*,int) ;
 int BXE_DEF_SB_ATT_IDX ;
 int BXE_DEF_SB_IDX ;
 int DBG_SP ;
 int IGU_INT_ENABLE ;
 int IGU_INT_NOP ;
 int USTORM_ID ;
 scalar_t__ __predict_false (int) ;
 int bxe_ack_sb (struct bxe_softc*,int ,int ,int ,int ,int) ;
 int bxe_attn_int (struct bxe_softc*) ;
 int bxe_eq_int (struct bxe_softc*) ;
 int bxe_update_dsb_idx (struct bxe_softc*) ;
 int le16toh (int ) ;

__attribute__((used)) static void
bxe_handle_sp_tq(void *context,
                 int pending)
{
    struct bxe_softc *sc = (struct bxe_softc *)context;
    uint16_t status;

    BLOGD(sc, DBG_SP, "---> SP TASK <---\n");


    status = bxe_update_dsb_idx(sc);

    BLOGD(sc, DBG_SP, "dsb status 0x%04x\n", status);


    if (status & BXE_DEF_SB_ATT_IDX) {
        BLOGD(sc, DBG_SP, "---> ATTN INTR <---\n");
        bxe_attn_int(sc);
        status &= ~BXE_DEF_SB_ATT_IDX;
    }


    if (status & BXE_DEF_SB_IDX) {

        BLOGD(sc, DBG_SP, "---> EQ INTR <---\n");
        bxe_eq_int(sc);
        bxe_ack_sb(sc, sc->igu_dsb_id, USTORM_ID,
                   le16toh(sc->def_idx), IGU_INT_NOP, 1);
        status &= ~BXE_DEF_SB_IDX;
    }


    if (__predict_false(status)) {
        BLOGE(sc, "Got an unknown SP interrupt! (0x%04x)\n", status);
    }


    bxe_ack_sb(sc, sc->igu_dsb_id, ATTENTION_ID,
               le16toh(sc->def_att_idx), IGU_INT_ENABLE, 1);
}
