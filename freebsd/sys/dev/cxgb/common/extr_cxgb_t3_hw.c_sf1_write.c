
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_SF_DATA ;
 int A_SF_OP ;
 int EBUSY ;
 int EINVAL ;
 int F_BUSY ;
 int SF_ATTEMPTS ;
 int V_BYTECNT (unsigned int) ;
 int V_CONT (int) ;
 int V_OP (int) ;
 int t3_read_reg (int *,int ) ;
 int t3_wait_op_done (int *,int ,int,int ,int ,int) ;
 int t3_write_reg (int *,int ,int) ;

__attribute__((used)) static int sf1_write(adapter_t *adapter, unsigned int byte_cnt, int cont,
       u32 val)
{
 if (!byte_cnt || byte_cnt > 4)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SF_OP) & F_BUSY)
  return -EBUSY;
 t3_write_reg(adapter, A_SF_DATA, val);
 t3_write_reg(adapter, A_SF_OP,
       V_CONT(cont) | V_BYTECNT(byte_cnt - 1) | V_OP(1));
 return t3_wait_op_done(adapter, A_SF_OP, F_BUSY, 0, SF_ATTEMPTS, 10);
}
