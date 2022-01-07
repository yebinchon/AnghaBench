
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct addr_val_pair {int const member_1; scalar_t__ const member_0; } ;
struct TYPE_9__ {scalar_t__ rev; } ;
struct TYPE_10__ {int slow_intr_mask; TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int ARRAY_SIZE (struct addr_val_pair*) ;

 int A_CPL_INTR_ENABLE ;



 int A_PCIE_INT_ENABLE ;
 int A_PCIX_INT_ENABLE ;
 int A_PL_INT_ENABLE0 ;


 int A_SG_INT_ENABLE ;
 int A_T3DBG_INT_ENABLE ;
 int A_TP_INT_ENABLE ;

 int A_ULPTX_INT_ENABLE ;

 int CPLSW_INTR_MASK ;
 int F_CIM_OVFL_ERROR ;
 int F_PBL_BOUND_ERR_CH0 ;
 int F_PBL_BOUND_ERR_CH1 ;






 int PCIE_INTR_MASK ;
 int PCIX_INTR_MASK ;
 int PL_INTR_MASK ;


 int SGE_INTR_MASK ;
 scalar_t__ T3_REV_C ;

 int ULPTX_INTR_MASK ;
 int calc_gpio_intr (TYPE_2__*) ;
 scalar_t__ is_pcie (TYPE_2__*) ;
 int t3_read_reg (TYPE_2__*,int ) ;
 int t3_write_reg (TYPE_2__*,int ,int) ;
 int t3_write_regs (TYPE_2__*,struct addr_val_pair*,int ,int ) ;

void t3_intr_enable(adapter_t *adapter)
{
 static struct addr_val_pair intr_en_avp[] = {
  { 142, 134 },
  { 142 - 133 + 132,
   134 },
  { 142 - 133 + 135,
   134 },
  { 143, 136 },
  { 138, 128 },
  { 139, 129 },
  { 140, 130 },
  { 144, 137 },
  { 141, 131 },
 };

 adapter->slow_intr_mask = PL_INTR_MASK;

 t3_write_regs(adapter, intr_en_avp, ARRAY_SIZE(intr_en_avp), 0);
 t3_write_reg(adapter, A_TP_INT_ENABLE,
       adapter->params.rev >= T3_REV_C ? 0x2bfffff : 0x3bfffff);
 t3_write_reg(adapter, A_SG_INT_ENABLE, SGE_INTR_MASK);

 if (adapter->params.rev > 0) {
  t3_write_reg(adapter, A_CPL_INTR_ENABLE,
        CPLSW_INTR_MASK | F_CIM_OVFL_ERROR);
  t3_write_reg(adapter, A_ULPTX_INT_ENABLE,
        ULPTX_INTR_MASK | F_PBL_BOUND_ERR_CH0 |
        F_PBL_BOUND_ERR_CH1);
 } else {
  t3_write_reg(adapter, A_CPL_INTR_ENABLE, CPLSW_INTR_MASK);
  t3_write_reg(adapter, A_ULPTX_INT_ENABLE, ULPTX_INTR_MASK);
 }

 t3_write_reg(adapter, A_T3DBG_INT_ENABLE, calc_gpio_intr(adapter));

 if (is_pcie(adapter))
  t3_write_reg(adapter, A_PCIE_INT_ENABLE, PCIE_INTR_MASK);
 else
  t3_write_reg(adapter, A_PCIX_INT_ENABLE, PCIX_INTR_MASK);
 t3_write_reg(adapter, A_PL_INT_ENABLE0, adapter->slow_intr_mask);
 (void) t3_read_reg(adapter, A_PL_INT_ENABLE0);
}
