
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct ch_ifconf_regs {int version; } ;
struct TYPE_6__ {int rev; } ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int A_CPL_MAP_TBL_DATA ;
 int A_CPL_SWITCH_CNTRL ;
 int A_MPS_INT_CAUSE ;
 int A_SG_HI_DRB_HI_THRSH ;
 int A_SG_RSPQ_CREDIT_RETURN ;
 int A_SMB_GLOBAL_TIME_CFG ;
 int A_ULPRX_PBL_ULIMIT ;
 int A_ULPTX_CONFIG ;
 int A_XGM_RX_SPI4_SOP_EOP_CNT ;
 int A_XGM_SERDES_STAT3 ;
 int A_XGM_SERDES_STATUS0 ;
 int XGM_REG (int ,int) ;
 int cxgb_get_regs_len () ;
 int is_pcie (TYPE_2__*) ;
 int memset (int *,int ,int ) ;
 int reg_block_dump (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static void
cxgb_get_regs(adapter_t *sc, struct ch_ifconf_regs *regs, uint8_t *buf)
{







 regs->version = 3 | (sc->params.rev << 10) | (is_pcie(sc) << 31);






 memset(buf, 0, cxgb_get_regs_len());
 reg_block_dump(sc, buf, 0, A_SG_RSPQ_CREDIT_RETURN);
 reg_block_dump(sc, buf, A_SG_HI_DRB_HI_THRSH, A_ULPRX_PBL_ULIMIT);
 reg_block_dump(sc, buf, A_ULPTX_CONFIG, A_MPS_INT_CAUSE);
 reg_block_dump(sc, buf, A_CPL_SWITCH_CNTRL, A_CPL_MAP_TBL_DATA);
 reg_block_dump(sc, buf, A_SMB_GLOBAL_TIME_CFG, A_XGM_SERDES_STAT3);
 reg_block_dump(sc, buf, A_XGM_SERDES_STATUS0,
         XGM_REG(A_XGM_SERDES_STAT3, 1));
 reg_block_dump(sc, buf, XGM_REG(A_XGM_SERDES_STATUS0, 1),
         XGM_REG(A_XGM_RX_SPI4_SOP_EOP_CNT, 1));
}
