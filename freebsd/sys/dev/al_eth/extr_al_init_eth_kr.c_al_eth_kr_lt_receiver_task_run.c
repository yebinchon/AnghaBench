
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_kr_data {int adapter; } ;
struct al_eth_kr_coef_up_data {int dummy; } ;


 int AL_ETH_AN__LT_LANE_0 ;
 int al_eth_coeff_req_handle (struct al_eth_kr_data*,struct al_eth_kr_coef_up_data*) ;
 scalar_t__ al_eth_kr_receiver_frame_lock_get (int ,int ) ;
 scalar_t__ al_eth_lp_coeff_up_change (struct al_eth_kr_data*,struct al_eth_kr_coef_up_data*) ;
 int al_eth_lp_coeff_up_get (int ,int ,struct al_eth_kr_coef_up_data*) ;

__attribute__((used)) static int
al_eth_kr_lt_receiver_task_run(struct al_eth_kr_data *kr_data)
{
 struct al_eth_kr_coef_up_data new_lpcoeff;
 if (al_eth_kr_receiver_frame_lock_get(kr_data->adapter,
     AL_ETH_AN__LT_LANE_0) != 0) {
  return (0);
 }


 al_eth_lp_coeff_up_get(kr_data->adapter,
     AL_ETH_AN__LT_LANE_0, &new_lpcoeff);

 if (al_eth_lp_coeff_up_change(kr_data, &new_lpcoeff) != 0) {

  al_eth_coeff_req_handle(kr_data, &new_lpcoeff);
 }

 return (0);
}
