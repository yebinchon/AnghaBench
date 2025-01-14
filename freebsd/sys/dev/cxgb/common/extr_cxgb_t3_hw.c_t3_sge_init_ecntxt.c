
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef enum sge_context_type { ____Placeholder_sge_context_type } sge_context_type ;
typedef int adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_DATA1 ;
 int A_SG_CONTEXT_DATA2 ;
 int A_SG_CONTEXT_DATA3 ;
 int EBUSY ;
 int EINVAL ;
 unsigned int FW_WR_NUM ;
 int F_CONTEXT_CMD_BUSY ;
 int F_EC_VALID ;
 int F_EGRESS ;
 int SGE_CNTXT_OFLD ;
 int V_EC_BASE_HI (int) ;
 int V_EC_BASE_LO (int) ;
 int V_EC_CREDITS (unsigned int) ;
 int V_EC_GEN (int) ;
 int V_EC_GTS (int) ;
 int V_EC_INDEX (unsigned int) ;
 int V_EC_RESPQ (int) ;
 int V_EC_SIZE (unsigned int) ;
 int V_EC_TYPE (int) ;
 int V_EC_UP_TOKEN (unsigned int) ;
 int t3_read_reg (int *,int ) ;
 int t3_sge_write_context (int *,unsigned int,int ) ;
 int t3_write_reg (int *,int ,int) ;

int t3_sge_init_ecntxt(adapter_t *adapter, unsigned int id, int gts_enable,
         enum sge_context_type type, int respq, u64 base_addr,
         unsigned int size, unsigned int token, int gen,
         unsigned int cidx)
{
 unsigned int credits = type == SGE_CNTXT_OFLD ? 0 : FW_WR_NUM;

 if (base_addr & 0xfff)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 base_addr >>= 12;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, V_EC_INDEX(cidx) |
       V_EC_CREDITS(credits) | V_EC_GTS(gts_enable));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA1, V_EC_SIZE(size) |
       V_EC_BASE_LO((u32)base_addr & 0xffff));
 base_addr >>= 16;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA2, (u32)base_addr);
 base_addr >>= 32;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3,
       V_EC_BASE_HI((u32)base_addr & 0xf) | V_EC_RESPQ(respq) |
       V_EC_TYPE(type) | V_EC_GEN(gen) | V_EC_UP_TOKEN(token) |
       F_EC_VALID);
 return t3_sge_write_context(adapter, id, F_EGRESS);
}
