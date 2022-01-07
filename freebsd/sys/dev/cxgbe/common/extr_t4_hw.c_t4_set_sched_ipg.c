
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_TP_TM_PIO_ADDR ;
 int A_TP_TM_PIO_DATA ;
 int A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR ;
 int EINVAL ;
 unsigned int M_TXTIMERSEPQ0 ;
 unsigned int M_TXTIMERSEPQ1 ;
 unsigned int V_TXTIMERSEPQ0 (unsigned int) ;
 unsigned int V_TXTIMERSEPQ1 (unsigned int) ;
 unsigned int core_ticks_per_usec (struct adapter*) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

int t4_set_sched_ipg(struct adapter *adap, int sched, unsigned int ipg)
{
 unsigned int v, addr = A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR - sched / 2;


 ipg *= core_ticks_per_usec(adap);
 ipg = (ipg + 5000) / 10000;
 if (ipg > M_TXTIMERSEPQ0)
  return -EINVAL;

 t4_write_reg(adap, A_TP_TM_PIO_ADDR, addr);
 v = t4_read_reg(adap, A_TP_TM_PIO_DATA);
 if (sched & 1)
  v = (v & V_TXTIMERSEPQ0(M_TXTIMERSEPQ0)) | V_TXTIMERSEPQ1(ipg);
 else
  v = (v & V_TXTIMERSEPQ1(M_TXTIMERSEPQ1)) | V_TXTIMERSEPQ0(ipg);
 t4_write_reg(adap, A_TP_TM_PIO_DATA, v);
 t4_read_reg(adap, A_TP_TM_PIO_DATA);
 return 0;
}
