
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pbf_pN_cmd_regs {int member_0; int member_3; int member_2; int member_1; } ;
struct pbf_pN_buf_regs {int member_0; int member_3; int member_2; int member_1; } ;
struct bxe_softc {int dummy; } ;


 int ARRAY_SIZE (struct pbf_pN_cmd_regs*) ;
 int CHIP_IS_E3B0 (struct bxe_softc*) ;
 int PBF_REG_CREDIT_LB_Q ;
 int PBF_REG_CREDIT_Q0 ;
 int PBF_REG_CREDIT_Q1 ;
 int PBF_REG_INIT_CRD_LB_Q ;
 int PBF_REG_INIT_CRD_Q0 ;
 int PBF_REG_INIT_CRD_Q1 ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_Q0 ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_Q1 ;
 int PBF_REG_P0_CREDIT ;
 int PBF_REG_P0_INIT_CRD ;
 int PBF_REG_P0_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P0_TQ_LINES_FREED_CNT ;
 int PBF_REG_P0_TQ_OCCUPANCY ;
 int PBF_REG_P1_CREDIT ;
 int PBF_REG_P1_INIT_CRD ;
 int PBF_REG_P1_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P1_TQ_LINES_FREED_CNT ;
 int PBF_REG_P1_TQ_OCCUPANCY ;
 int PBF_REG_P4_CREDIT ;
 int PBF_REG_P4_INIT_CRD ;
 int PBF_REG_P4_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P4_TQ_LINES_FREED_CNT ;
 int PBF_REG_P4_TQ_OCCUPANCY ;
 int PBF_REG_TQ_LINES_FREED_CNT_LB_Q ;
 int PBF_REG_TQ_LINES_FREED_CNT_Q0 ;
 int PBF_REG_TQ_LINES_FREED_CNT_Q1 ;
 int PBF_REG_TQ_OCCUPANCY_LB_Q ;
 int PBF_REG_TQ_OCCUPANCY_Q0 ;
 int PBF_REG_TQ_OCCUPANCY_Q1 ;
 int bxe_pbf_pN_buf_flushed (struct bxe_softc*,struct pbf_pN_cmd_regs*,int ) ;
 int bxe_pbf_pN_cmd_flushed (struct bxe_softc*,struct pbf_pN_cmd_regs*,int ) ;

__attribute__((used)) static void
bxe_tx_hw_flushed(struct bxe_softc *sc, uint32_t poll_count)
{
    struct pbf_pN_cmd_regs cmd_regs[] = {
        {0, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_OCCUPANCY_Q0 :
            PBF_REG_P0_TQ_OCCUPANCY,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_LINES_FREED_CNT_Q0 :
            PBF_REG_P0_TQ_LINES_FREED_CNT},
        {1, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_OCCUPANCY_Q1 :
            PBF_REG_P1_TQ_OCCUPANCY,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_LINES_FREED_CNT_Q1 :
            PBF_REG_P1_TQ_LINES_FREED_CNT},
        {4, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_OCCUPANCY_LB_Q :
            PBF_REG_P4_TQ_OCCUPANCY,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_TQ_LINES_FREED_CNT_LB_Q :
            PBF_REG_P4_TQ_LINES_FREED_CNT}
    };

    struct pbf_pN_buf_regs buf_regs[] = {
        {0, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INIT_CRD_Q0 :
            PBF_REG_P0_INIT_CRD ,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_CREDIT_Q0 :
            PBF_REG_P0_CREDIT,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INTERNAL_CRD_FREED_CNT_Q0 :
            PBF_REG_P0_INTERNAL_CRD_FREED_CNT},
        {1, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INIT_CRD_Q1 :
            PBF_REG_P1_INIT_CRD,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_CREDIT_Q1 :
            PBF_REG_P1_CREDIT,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INTERNAL_CRD_FREED_CNT_Q1 :
            PBF_REG_P1_INTERNAL_CRD_FREED_CNT},
        {4, (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INIT_CRD_LB_Q :
            PBF_REG_P4_INIT_CRD,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_CREDIT_LB_Q :
            PBF_REG_P4_CREDIT,
            (CHIP_IS_E3B0(sc)) ?
            PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q :
            PBF_REG_P4_INTERNAL_CRD_FREED_CNT},
    };

    int i;


    for (i = 0; i < ARRAY_SIZE(cmd_regs); i++) {
        bxe_pbf_pN_cmd_flushed(sc, &cmd_regs[i], poll_count);
    }


    for (i = 0; i < ARRAY_SIZE(buf_regs); i++) {
        bxe_pbf_pN_buf_flushed(sc, &buf_regs[i], poll_count);
    }
}
