
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ixgbe_dcb_tc_path {int bwg_percent; int bwg_id; scalar_t__ tsa; } ;
struct ixgbe_dcb_config {int** bw_percentage; TYPE_1__* tc_config; } ;
typedef int s32 ;
typedef int link_strict ;
typedef int bw_sum ;
struct TYPE_2__ {struct ixgbe_dcb_tc_path* path; } ;


 int DEBUGOUT2 (char*,int ,char*) ;
 int IXGBE_DCB_BW_PERCENT ;
 int IXGBE_DCB_MAX_BW_GROUP ;
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_DCB_TX_CONFIG ;
 int IXGBE_ERR_CONFIG ;
 int IXGBE_SUCCESS ;
 int TRUE ;
 scalar_t__ ixgbe_dcb_tsa_strict ;
 int memset (int**,int ,int) ;

s32 ixgbe_dcb_check_config_cee(struct ixgbe_dcb_config *dcb_config)
{
 struct ixgbe_dcb_tc_path *p;
 s32 ret_val = IXGBE_SUCCESS;
 u8 i, j, bw = 0, bw_id;
 u8 bw_sum[2][IXGBE_DCB_MAX_BW_GROUP];
 bool link_strict[2][IXGBE_DCB_MAX_BW_GROUP];

 memset(bw_sum, 0, sizeof(bw_sum));
 memset(link_strict, 0, sizeof(link_strict));


 for (i = 0; i < 2; i++) {

  for (j = 0; j < IXGBE_DCB_MAX_TRAFFIC_CLASS; j++) {
   p = &dcb_config->tc_config[j].path[i];

   bw = p->bwg_percent;
   bw_id = p->bwg_id;

   if (bw_id >= IXGBE_DCB_MAX_BW_GROUP) {
    ret_val = IXGBE_ERR_CONFIG;
    goto err_config;
   }
   if (p->tsa == ixgbe_dcb_tsa_strict) {
    link_strict[i][bw_id] = TRUE;

    if (bw) {
     ret_val = IXGBE_ERR_CONFIG;
     goto err_config;
    }
   } else if (!bw) {




    ret_val = IXGBE_ERR_CONFIG;
    goto err_config;
   }
   bw_sum[i][bw_id] += bw;
  }

  bw = 0;


  for (j = 0; j < IXGBE_DCB_MAX_BW_GROUP; j++) {
   bw += dcb_config->bw_percentage[i][j];





   if (link_strict[i][j]) {
    if (bw_sum[i][j]) {




     ret_val = IXGBE_ERR_CONFIG;
     goto err_config;
    }
   } else if (bw_sum[i][j] != IXGBE_DCB_BW_PERCENT &&
       bw_sum[i][j] != 0) {
    ret_val = IXGBE_ERR_CONFIG;
    goto err_config;
   }
  }

  if (bw != IXGBE_DCB_BW_PERCENT) {
   ret_val = IXGBE_ERR_CONFIG;
   goto err_config;
  }
 }

err_config:
 DEBUGOUT2("DCB error code %d while checking %s settings.\n",
    ret_val, (i == IXGBE_DCB_TX_CONFIG) ? "Tx" : "Rx");

 return ret_val;
}
