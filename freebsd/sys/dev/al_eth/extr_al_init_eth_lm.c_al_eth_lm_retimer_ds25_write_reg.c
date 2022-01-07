
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct al_eth_lm_context {int (* i2c_read ) (int ,int ,int ,int ,int *) ;int (* i2c_write ) (int ,int ,int ,int ,int ) ;int retimer_i2c_addr; int retimer_bus_id; int i2c_context; } ;


 int EIO ;
 int stub1 (int ,int ,int ,int ,int *) ;
 int stub2 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int al_eth_lm_retimer_ds25_write_reg(struct al_eth_lm_context *lm_context,
         uint8_t reg_addr,
         uint8_t reg_mask,
         uint8_t reg_value)
{
 uint8_t reg;
 int rc;

 rc = lm_context->i2c_read(lm_context->i2c_context,
      lm_context->retimer_bus_id,
      lm_context->retimer_i2c_addr,
      reg_addr,
      &reg);

 if (rc != 0)
  return (EIO);

 reg &= ~(reg_mask);
 reg |= reg_value;

 rc = lm_context->i2c_write(lm_context->i2c_context,
       lm_context->retimer_bus_id,
       lm_context->retimer_i2c_addr,
       reg_addr,
       reg);

 if (rc != 0)
  return (EIO);

 return (0);
}
