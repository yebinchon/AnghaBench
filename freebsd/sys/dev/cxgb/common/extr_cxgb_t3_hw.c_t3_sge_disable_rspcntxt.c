
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_MASK0 ;
 int A_SG_CONTEXT_MASK1 ;
 int A_SG_CONTEXT_MASK2 ;
 int A_SG_CONTEXT_MASK3 ;
 int EBUSY ;
 int F_CONTEXT_CMD_BUSY ;
 int F_RESPONSEQ ;
 int M_CQ_SIZE ;
 int SG_CONTEXT_CMD_ATTEMPTS ;
 int V_CONTEXT (unsigned int) ;
 int V_CONTEXT_CMD_OPCODE (int) ;
 int V_CQ_SIZE (int ) ;
 int t3_read_reg (int *,int ) ;
 int t3_wait_op_done (int *,int ,int,int ,int ,int) ;
 int t3_write_reg (int *,int ,int) ;

int t3_sge_disable_rspcntxt(adapter_t *adapter, unsigned int id)
{
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 t3_write_reg(adapter, A_SG_CONTEXT_MASK0, V_CQ_SIZE(M_CQ_SIZE));
 t3_write_reg(adapter, A_SG_CONTEXT_MASK1, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_MASK2, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_MASK3, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_CMD,
       V_CONTEXT_CMD_OPCODE(1) | F_RESPONSEQ | V_CONTEXT(id));
 return t3_wait_op_done(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
          0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}
