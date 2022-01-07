
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_CIM_HOST_ACC_CTRL ;
 int A_CIM_HOST_ACC_DATA ;
 int EBUSY ;
 int F_HOSTBUSY ;
 unsigned int F_HOSTWRITE ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

int t4_cim_write(struct adapter *adap, unsigned int addr, unsigned int n,
   const unsigned int *valp)
{
 int ret = 0;

 if (t4_read_reg(adap, A_CIM_HOST_ACC_CTRL) & F_HOSTBUSY)
  return -EBUSY;

 for ( ; !ret && n--; addr += 4) {
  t4_write_reg(adap, A_CIM_HOST_ACC_DATA, *valp++);
  t4_write_reg(adap, A_CIM_HOST_ACC_CTRL, addr | F_HOSTWRITE);
  ret = t4_wait_op_done(adap, A_CIM_HOST_ACC_CTRL, F_HOSTBUSY,
          0, 5, 2);
 }
 return ret;
}
