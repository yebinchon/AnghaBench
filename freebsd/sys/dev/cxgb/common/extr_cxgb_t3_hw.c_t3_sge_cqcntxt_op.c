
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ rev; } ;
struct TYPE_9__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int EBUSY ;
 int EIO ;
 int F_CONTEXT_CMD_BUSY ;
 unsigned int F_CQ ;
 int G_CQ_INDEX (int) ;
 int SG_CONTEXT_CMD_ATTEMPTS ;
 unsigned int V_CONTEXT (unsigned int) ;
 unsigned int V_CONTEXT_CMD_OPCODE (unsigned int) ;
 int t3_read_reg (TYPE_2__*,int ) ;
 scalar_t__ t3_wait_op_done (TYPE_2__*,int ,int,int ,int ,int) ;
 scalar_t__ t3_wait_op_done_val (TYPE_2__*,int ,int,int ,int ,int,int*) ;
 int t3_write_reg (TYPE_2__*,int ,unsigned int) ;

int t3_sge_cqcntxt_op(adapter_t *adapter, unsigned int id, unsigned int op,
        unsigned int credits)
{
 u32 val;

 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, credits << 16);
 t3_write_reg(adapter, A_SG_CONTEXT_CMD, V_CONTEXT_CMD_OPCODE(op) |
       V_CONTEXT(id) | F_CQ);
 if (t3_wait_op_done_val(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
    0, SG_CONTEXT_CMD_ATTEMPTS, 1, &val))
  return -EIO;

 if (op >= 2 && op < 7) {
  if (adapter->params.rev > 0)
   return G_CQ_INDEX(val);

  t3_write_reg(adapter, A_SG_CONTEXT_CMD,
        V_CONTEXT_CMD_OPCODE(0) | F_CQ | V_CONTEXT(id));
  if (t3_wait_op_done(adapter, A_SG_CONTEXT_CMD,
        F_CONTEXT_CMD_BUSY, 0,
        SG_CONTEXT_CMD_ATTEMPTS, 1))
   return -EIO;
  return G_CQ_INDEX(t3_read_reg(adapter, A_SG_CONTEXT_DATA0));
 }
 return 0;
}
