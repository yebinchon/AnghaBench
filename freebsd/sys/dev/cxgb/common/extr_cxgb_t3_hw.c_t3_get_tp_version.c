
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_TP_EMBED_OP_FIELD0 ;
 int A_TP_EMBED_OP_FIELD1 ;
 int t3_read_reg (int *,int ) ;
 int t3_wait_op_done (int *,int ,int,int,int,int) ;
 int t3_write_reg (int *,int ,int ) ;

int t3_get_tp_version(adapter_t *adapter, u32 *vers)
{
 int ret;


 t3_write_reg(adapter, A_TP_EMBED_OP_FIELD0, 0);
 ret = t3_wait_op_done(adapter, A_TP_EMBED_OP_FIELD0,
         1, 1, 5, 1);
 if (ret)
  return ret;

 *vers = t3_read_reg(adapter, A_TP_EMBED_OP_FIELD1);

 return 0;
}
