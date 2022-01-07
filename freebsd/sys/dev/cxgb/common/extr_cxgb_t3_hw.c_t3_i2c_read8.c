
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int adapter_t ;


 int A_I2C_DATA ;
 int A_I2C_OP ;
 int F_I2C_ACK ;
 int F_I2C_BUSY ;
 int F_I2C_CONT ;
 int F_I2C_READ ;
 int G_I2C_DATA (int ) ;
 int I2C_ATTEMPTS ;
 int MDIO_LOCK (int *) ;
 int MDIO_UNLOCK (int *) ;
 int t3_read_reg (int *,int ) ;
 int t3_wait_op_done_val (int *,int ,int ,int ,int ,int,int*) ;
 int t3_write_reg (int *,int ,int) ;

int t3_i2c_read8(adapter_t *adapter, int chained, u8 *valp)
{
 int ret;
 u32 opval;
 MDIO_LOCK(adapter);
 t3_write_reg(adapter, A_I2C_OP,
       F_I2C_READ | (chained ? F_I2C_CONT : 0));
 ret = t3_wait_op_done_val(adapter, A_I2C_OP, F_I2C_BUSY, 0,
      I2C_ATTEMPTS, 10, &opval);
 if (ret >= 0) {
  ret = ((opval & F_I2C_ACK) == F_I2C_ACK);
  *valp = G_I2C_DATA(t3_read_reg(adapter, A_I2C_DATA));
 }
 MDIO_UNLOCK(adapter);
 return ret;
}
