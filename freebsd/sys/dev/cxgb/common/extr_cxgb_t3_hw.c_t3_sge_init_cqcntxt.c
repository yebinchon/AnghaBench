
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_DATA1 ;
 int A_SG_CONTEXT_DATA2 ;
 int A_SG_CONTEXT_DATA3 ;
 int EBUSY ;
 int EINVAL ;
 int F_CONTEXT_CMD_BUSY ;
 int F_CQ ;
 int V_CQ_BASE_HI (int) ;
 int V_CQ_CREDITS (unsigned int) ;
 int V_CQ_CREDIT_THRES (unsigned int) ;
 int V_CQ_ERR (int) ;
 int V_CQ_GEN (int) ;
 int V_CQ_OVERFLOW_MODE (int) ;
 int V_CQ_RSPQ (int) ;
 int V_CQ_SIZE (unsigned int) ;
 int t3_read_reg (int *,int ) ;
 int t3_sge_write_context (int *,unsigned int,int ) ;
 int t3_write_reg (int *,int ,int) ;

int t3_sge_init_cqcntxt(adapter_t *adapter, unsigned int id, u64 base_addr,
   unsigned int size, int rspq, int ovfl_mode,
   unsigned int credits, unsigned int credit_thres)
{
 if (base_addr & 0xfff)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 base_addr >>= 12;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, V_CQ_SIZE(size));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA1, (u32)base_addr);
 base_addr >>= 32;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA2,
       V_CQ_BASE_HI((u32)base_addr) | V_CQ_RSPQ(rspq) |
       V_CQ_GEN(1) | V_CQ_OVERFLOW_MODE(ovfl_mode) |
       V_CQ_ERR(ovfl_mode));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3, V_CQ_CREDITS(credits) |
       V_CQ_CREDIT_THRES(credit_thres));
 return t3_sge_write_context(adapter, id, F_CQ);
}
