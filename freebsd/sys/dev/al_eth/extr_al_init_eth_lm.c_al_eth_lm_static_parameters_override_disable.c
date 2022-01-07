
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_lm_context {void* serdes_tx_params_valid; } ;
typedef scalar_t__ boolean_t ;


 void* FALSE ;

int
al_eth_lm_static_parameters_override_disable(struct al_eth_lm_context *lm_context,
    boolean_t tx_params, boolean_t rx_params)
{

 if (tx_params != 0)
  lm_context->serdes_tx_params_valid = FALSE;
 if (rx_params != 0)
  lm_context->serdes_tx_params_valid = FALSE;

 return (0);
}
