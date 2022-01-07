
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_DATA1 ;
 int A_SG_CONTEXT_DATA2 ;
 int A_SG_CONTEXT_DATA3 ;
 int EBUSY ;
 int EIO ;
 int F_CONTEXT_CMD_BUSY ;
 int SG_CONTEXT_CMD_ATTEMPTS ;
 unsigned int V_CONTEXT (unsigned int) ;
 unsigned int V_CONTEXT_CMD_OPCODE (int ) ;
 int t3_read_reg (int *,int ) ;
 scalar_t__ t3_wait_op_done (int *,int ,int,int ,int ,int) ;
 int t3_write_reg (int *,int ,unsigned int) ;

__attribute__((used)) static int t3_sge_read_context(unsigned int type, adapter_t *adapter,
          unsigned int id, u32 data[4])
{
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 t3_write_reg(adapter, A_SG_CONTEXT_CMD,
       V_CONTEXT_CMD_OPCODE(0) | type | V_CONTEXT(id));
 if (t3_wait_op_done(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY, 0,
       SG_CONTEXT_CMD_ATTEMPTS, 1))
  return -EIO;
 data[0] = t3_read_reg(adapter, A_SG_CONTEXT_DATA0);
 data[1] = t3_read_reg(adapter, A_SG_CONTEXT_DATA1);
 data[2] = t3_read_reg(adapter, A_SG_CONTEXT_DATA2);
 data[3] = t3_read_reg(adapter, A_SG_CONTEXT_DATA3);
 return 0;
}
