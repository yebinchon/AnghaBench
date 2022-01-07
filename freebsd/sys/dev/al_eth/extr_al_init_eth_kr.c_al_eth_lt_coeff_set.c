
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_eth_kr_data {int lane; TYPE_1__* serdes_obj; } ;
typedef enum al_serdes_tx_deemph_param { ____Placeholder_al_serdes_tx_deemph_param } al_serdes_tx_deemph_param ;
typedef enum al_eth_kr_cl72_cstate { ____Placeholder_al_eth_kr_cl72_cstate } al_eth_kr_cl72_cstate ;
struct TYPE_3__ {int (* tx_deemph_dec ) (TYPE_1__*,int ,int) ;int (* tx_deemph_inc ) (TYPE_1__*,int ,int) ;} ;





 int C72_CSTATE_MAX ;
 int C72_CSTATE_MIN ;
 int C72_CSTATE_NOT_UPDATED ;
 int C72_CSTATE_UPDATED ;
 int stub1 (TYPE_1__*,int ,int) ;
 int stub2 (TYPE_1__*,int ,int) ;

__attribute__((used)) static enum al_eth_kr_cl72_cstate
al_eth_lt_coeff_set(struct al_eth_kr_data *kr_data,
    enum al_serdes_tx_deemph_param param, uint32_t op)
{
 enum al_eth_kr_cl72_cstate status = 0;

 switch (op) {
 case 129:

  status = C72_CSTATE_NOT_UPDATED;
  break;
 case 128:
  status = C72_CSTATE_UPDATED;

  if (kr_data->serdes_obj->tx_deemph_inc(
     kr_data->serdes_obj,
     kr_data->lane,
     param) == 0)
   status = C72_CSTATE_MAX;
  break;
 case 130:
  status = C72_CSTATE_UPDATED;

  if (kr_data->serdes_obj->tx_deemph_dec(
     kr_data->serdes_obj,
     kr_data->lane,
     param) == 0)
   status = C72_CSTATE_MIN;
  break;
 default:
  break;
 }

 return (status);
}
