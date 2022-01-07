
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct TYPE_3__ {int aeu_int_mask; } ;
struct bxe_softc {int sp_err_timeout_task; int link_params; TYPE_2__ port; TYPE_1__ link_vars; } ;


 int AEU_INPUTS_ATTN_BITS_SPIO5 ;
 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_ERR_MISC ;
 int BXE_SET_ERROR_BIT (struct bxe_softc*,int ) ;
 int HW_INTERRUT_ASSERT_SET_0 ;
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ;
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int SC_PORT (struct bxe_softc*) ;
 int bxe_acquire_phy_lock (struct bxe_softc*) ;
 int bxe_fan_failure (struct bxe_softc*) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int bxe_release_phy_lock (struct bxe_softc*) ;
 int elink_handle_module_detect_int (int *) ;
 int elink_hw_reset_phy (int *) ;
 int hz ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 int taskqueue_thread ;

__attribute__((used)) static void
bxe_attn_int_deasserted0(struct bxe_softc *sc,
                         uint32_t attn)
{
    int port = SC_PORT(sc);
    int reg_offset;
    uint32_t val;

    reg_offset = (port) ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
                          MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0;

    if (attn & AEU_INPUTS_ATTN_BITS_SPIO5) {
        val = REG_RD(sc, reg_offset);
        val &= ~AEU_INPUTS_ATTN_BITS_SPIO5;
        REG_WR(sc, reg_offset, val);

        BLOGW(sc, "SPIO5 hw attention\n");


        elink_hw_reset_phy(&sc->link_params);
        bxe_fan_failure(sc);
    }

    if ((attn & sc->link_vars.aeu_int_mask) && sc->port.pmf) {
 bxe_acquire_phy_lock(sc);
        elink_handle_module_detect_int(&sc->link_params);
 bxe_release_phy_lock(sc);
    }

    if (attn & HW_INTERRUT_ASSERT_SET_0) {
        val = REG_RD(sc, reg_offset);
        val &= ~(attn & HW_INTERRUT_ASSERT_SET_0);
        REG_WR(sc, reg_offset, val);


        BXE_SET_ERROR_BIT(sc, BXE_ERR_MISC);
        taskqueue_enqueue_timeout(taskqueue_thread,
           &sc->sp_err_timeout_task, hz/10);

        bxe_panic(sc, ("FATAL HW block attention set0 0x%lx\n",
                       (attn & HW_INTERRUT_ASSERT_SET_0)));
    }
}
