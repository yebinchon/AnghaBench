
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_CIM_HOST_ACC_CTRL ;
 int A_CIM_HOST_ACC_DATA ;
 int check_busy_bit (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int cim_ha_rreg(struct adapter *padap, u32 addr, u32 *val)
{
 int rc = 0;


 t4_write_reg(padap, A_CIM_HOST_ACC_CTRL, addr);


 rc = check_busy_bit(padap);
 if (rc)
  goto err;


 *val = t4_read_reg(padap, A_CIM_HOST_ACC_DATA);

err:
 return rc;
}
