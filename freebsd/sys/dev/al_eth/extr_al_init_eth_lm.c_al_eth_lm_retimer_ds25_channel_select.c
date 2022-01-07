
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct al_eth_lm_context {int dummy; } ;


 int LM_DS25_CHANNEL_EN_MASK ;
 int LM_DS25_CHANNEL_EN_REG ;
 int LM_DS25_CHANNEL_EN_VAL ;
 int LM_DS25_CHANNEL_SEL_MASK ;
 int LM_DS25_CHANNEL_SEL_REG ;
 int al_eth_lm_retimer_ds25_write_reg (struct al_eth_lm_context*,int ,int ,int) ;

__attribute__((used)) static int al_eth_lm_retimer_ds25_channel_select(struct al_eth_lm_context *lm_context,
       uint8_t channel)
{
 int rc = 0;


 rc = al_eth_lm_retimer_ds25_write_reg(lm_context,
           LM_DS25_CHANNEL_EN_REG,
           LM_DS25_CHANNEL_EN_MASK,
           LM_DS25_CHANNEL_EN_VAL);

 if (rc != 0)
  return (rc);

 rc = al_eth_lm_retimer_ds25_write_reg(lm_context,
           LM_DS25_CHANNEL_SEL_REG,
           LM_DS25_CHANNEL_SEL_MASK,
           (1 << channel));

 return (rc);
}
