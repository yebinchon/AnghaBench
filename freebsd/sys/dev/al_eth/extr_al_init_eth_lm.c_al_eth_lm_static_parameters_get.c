
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct al_serdes_adv_tx_params {int dummy; } ;
struct al_serdes_adv_rx_params {int dummy; } ;
struct al_eth_lm_context {int lane; TYPE_1__* serdes_obj; struct al_serdes_adv_rx_params rx_params_override; scalar_t__ serdes_rx_params_valid; struct al_serdes_adv_tx_params tx_params_override; scalar_t__ serdes_tx_params_valid; } ;
struct TYPE_3__ {int (* rx_advanced_params_get ) (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;int (* tx_advanced_params_get ) (TYPE_1__*,int ,struct al_serdes_adv_tx_params*) ;} ;


 int stub1 (TYPE_1__*,int ,struct al_serdes_adv_tx_params*) ;
 int stub2 (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;

int
al_eth_lm_static_parameters_get(struct al_eth_lm_context *lm_context,
    struct al_serdes_adv_tx_params *tx_params,
    struct al_serdes_adv_rx_params *rx_params)
{

 if (tx_params != ((void*)0)) {
  if (lm_context->serdes_tx_params_valid)
   *tx_params = lm_context->tx_params_override;
  else
   lm_context->serdes_obj->tx_advanced_params_get(
       lm_context->serdes_obj,
       lm_context->lane,
       tx_params);
 }

 if (rx_params != ((void*)0)) {
  if (lm_context->serdes_rx_params_valid)
   *rx_params = lm_context->rx_params_override;
  else
   lm_context->serdes_obj->rx_advanced_params_get(
       lm_context->serdes_obj,
       lm_context->lane,
       rx_params);
 }

 return (0);
}
