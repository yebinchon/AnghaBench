
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int cim_num_obq; } ;


 int A_CIM_OBQ_DBG_CFG ;
 int A_CIM_OBQ_DBG_DATA ;
 int A_CIM_QUEUE_CONFIG_CTRL ;
 int A_CIM_QUEUE_CONFIG_REF ;
 int EINVAL ;
 int F_OBQDBGBUSY ;
 int F_OBQDBGEN ;
 int F_OBQSELECT ;
 int G_CIMQBASE (unsigned int) ;
 int G_CIMQSIZE (unsigned int) ;
 int V_OBQDBGADDR (unsigned int) ;
 int V_QUENUMSELECT (unsigned int) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int ,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

int t4_read_cim_obq(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
 int i, err;
 unsigned int addr, v, nwords;
 int cim_num_obq = adap->chip_params->cim_num_obq;

 if ((qid > (cim_num_obq - 1)) || (n & 3))
  return -EINVAL;

 t4_write_reg(adap, A_CIM_QUEUE_CONFIG_REF, F_OBQSELECT |
       V_QUENUMSELECT(qid));
 v = t4_read_reg(adap, A_CIM_QUEUE_CONFIG_CTRL);

 addr = G_CIMQBASE(v) * 64;
 nwords = G_CIMQSIZE(v) * 64;
 if (n > nwords)
  n = nwords;

 for (i = 0; i < n; i++, addr++) {
  t4_write_reg(adap, A_CIM_OBQ_DBG_CFG, V_OBQDBGADDR(addr) |
        F_OBQDBGEN);
  err = t4_wait_op_done(adap, A_CIM_OBQ_DBG_CFG, F_OBQDBGBUSY, 0,
          2, 1);
  if (err)
   return err;
  *data++ = t4_read_reg(adap, A_CIM_OBQ_DBG_DATA);
 }
 t4_write_reg(adap, A_CIM_OBQ_DBG_CFG, 0);
 return i;
}
