
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pf; int mbox; } ;


 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_PARAM_DEV_VPDREV ;
 int V_FW_PARAMS_MNEM (int ) ;
 int V_FW_PARAMS_PARAM_X (int ) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

int t4_get_vpd_version(struct adapter *adapter, u32 *vers)
{
 u32 vpdrev_param;
 int ret;

 vpdrev_param = (V_FW_PARAMS_MNEM(FW_PARAMS_MNEM_DEV) |
   V_FW_PARAMS_PARAM_X(FW_PARAMS_PARAM_DEV_VPDREV));
 ret = t4_query_params(adapter, adapter->mbox, adapter->pf, 0,
         1, &vpdrev_param, vers);
 if (ret)
  *vers = 0;
 return ret;
}
