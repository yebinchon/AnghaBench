
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;
typedef int adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_DATA1 ;
 int A_SG_CONTEXT_DATA2 ;
 int A_SG_CONTEXT_DATA3 ;
 int A_SG_CONTROL ;
 int EBUSY ;
 int EINVAL ;
 int F_CONTEXT_CMD_BUSY ;
 unsigned int F_ONEINTMULTQ ;
 int F_RESPONSEQ ;
 unsigned int F_RQ_INTR_EN ;
 unsigned int V_CQ_BASE_HI (unsigned int) ;
 unsigned int V_CQ_INDEX (unsigned int) ;
 unsigned int V_CQ_SIZE (unsigned int) ;
 unsigned int V_RQ_GEN (int) ;
 unsigned int V_RQ_MSI_VEC (int) ;
 int t3_read_reg (int *,int ) ;
 int t3_sge_write_context (int *,unsigned int,int ) ;
 int t3_write_reg (int *,int ,unsigned int) ;

int t3_sge_init_rspcntxt(adapter_t *adapter, unsigned int id, int irq_vec_idx,
    u64 base_addr, unsigned int size,
    unsigned int fl_thres, int gen, unsigned int cidx)
{
 unsigned int ctrl, intr = 0;

 if (base_addr & 0xfff)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 base_addr >>= 12;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, V_CQ_SIZE(size) |
       V_CQ_INDEX(cidx));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA1, (u32)base_addr);
 base_addr >>= 32;
        ctrl = t3_read_reg(adapter, A_SG_CONTROL);
        if ((irq_vec_idx > 0) ||
  ((irq_vec_idx == 0) && !(ctrl & F_ONEINTMULTQ)))
                 intr = F_RQ_INTR_EN;
        if (irq_vec_idx >= 0)
                intr |= V_RQ_MSI_VEC(irq_vec_idx);
 t3_write_reg(adapter, A_SG_CONTEXT_DATA2,
       V_CQ_BASE_HI((u32)base_addr) | intr | V_RQ_GEN(gen));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3, fl_thres);
 return t3_sge_write_context(adapter, id, F_RESPONSEQ);
}
