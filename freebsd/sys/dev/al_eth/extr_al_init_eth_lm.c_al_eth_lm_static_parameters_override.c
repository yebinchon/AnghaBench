
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_adv_tx_params {int dummy; } ;
struct al_serdes_adv_rx_params {int dummy; } ;
struct al_eth_lm_context {int tx_param_dirty; int rx_param_dirty; void* serdes_rx_params_valid; struct al_serdes_adv_rx_params rx_params_override; void* serdes_tx_params_valid; struct al_serdes_adv_tx_params tx_params_override; } ;


 void* TRUE ;

int
al_eth_lm_static_parameters_override(struct al_eth_lm_context *lm_context,
    struct al_serdes_adv_tx_params *tx_params,
    struct al_serdes_adv_rx_params *rx_params)
{

 if (tx_params != ((void*)0)) {
  lm_context->tx_params_override = *tx_params;
  lm_context->tx_param_dirty = 1;
  lm_context->serdes_tx_params_valid = TRUE;
 }

 if (rx_params != ((void*)0)) {
  lm_context->rx_params_override = *rx_params;
  lm_context->rx_param_dirty = 1;
  lm_context->serdes_rx_params_valid = TRUE;
 }

 return (0);
}
