
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_SG_INT_CAUSE ;
 int A_SG_RSPQ_FL_STATUS ;
 int CH_ALERT (int *,char*,...) ;
 unsigned int F_RSPQCREDITOVERFOW ;
 unsigned int F_RSPQDISABLED ;
 unsigned int SGE_FATALERR ;
 unsigned int SGE_FRAMINGERR ;
 unsigned int SGE_PARERR ;
 unsigned int S_RSPQ0DISABLED ;
 int t3_fatal_err (int *) ;
 unsigned int t3_read_reg (int *,int ) ;
 int t3_write_reg (int *,int ,unsigned int) ;

void
t3_sge_err_intr_handler(adapter_t *adapter)
{
 unsigned int v, status;

 status = t3_read_reg(adapter, A_SG_INT_CAUSE);
 if (status & SGE_PARERR)
  CH_ALERT(adapter, "SGE parity error (0x%x)\n",
    status & SGE_PARERR);
 if (status & SGE_FRAMINGERR)
  CH_ALERT(adapter, "SGE framing error (0x%x)\n",
    status & SGE_FRAMINGERR);
 if (status & F_RSPQCREDITOVERFOW)
  CH_ALERT(adapter, "SGE response queue credit overflow\n");

 if (status & F_RSPQDISABLED) {
  v = t3_read_reg(adapter, A_SG_RSPQ_FL_STATUS);

  CH_ALERT(adapter,
    "packet delivered to disabled response queue (0x%x)\n",
    (v >> S_RSPQ0DISABLED) & 0xff);
 }

 t3_write_reg(adapter, A_SG_INT_CAUSE, status);
 if (status & SGE_FATALERR)
  t3_fatal_err(adapter);
}
