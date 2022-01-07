
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int cim_num_obq; } ;


 int A_CIM_QUEUE_CONFIG_CTRL ;
 int A_CIM_QUEUE_CONFIG_REF ;
 unsigned int CIM_NUM_IBQ ;
 int F_IBQSELECT ;
 int F_OBQSELECT ;
 int G_CIMQBASE (unsigned int) ;
 int G_CIMQSIZE (unsigned int) ;
 int G_QUEFULLTHRSH (unsigned int) ;
 int V_QUENUMSELECT (unsigned int) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_cimq_cfg(struct adapter *adap, u16 *base, u16 *size, u16 *thres)
{
 unsigned int i, v;
 int cim_num_obq = adap->chip_params->cim_num_obq;

 for (i = 0; i < CIM_NUM_IBQ; i++) {
  t4_write_reg(adap, A_CIM_QUEUE_CONFIG_REF, F_IBQSELECT |
        V_QUENUMSELECT(i));
  v = t4_read_reg(adap, A_CIM_QUEUE_CONFIG_CTRL);

  *base++ = G_CIMQBASE(v) * 256;
  *size++ = G_CIMQSIZE(v) * 256;
  *thres++ = G_QUEFULLTHRSH(v) * 8;
 }
 for (i = 0; i < cim_num_obq; i++) {
  t4_write_reg(adap, A_CIM_QUEUE_CONFIG_REF, F_OBQSELECT |
        V_QUENUMSELECT(i));
  v = t4_read_reg(adap, A_CIM_QUEUE_CONFIG_CTRL);

  *base++ = G_CIMQBASE(v) * 256;
  *size++ = G_CIMQSIZE(v) * 256;
 }
}
