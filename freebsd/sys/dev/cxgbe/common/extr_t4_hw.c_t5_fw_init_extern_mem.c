
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pf; int mbox; } ;


 int FW_CMD_MAX_TIMEOUT ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_PARAM_DEV_MCINIT ;
 int V_FW_PARAMS_MNEM (int ) ;
 int V_FW_PARAMS_PARAM_X (int ) ;
 int is_t5 (struct adapter*) ;
 int t4_set_params_timeout (struct adapter*,int ,int ,int ,int,int*,int*,int ) ;

int t5_fw_init_extern_mem(struct adapter *adap)
{
 u32 params[1], val[1];
 int ret;

 if (!is_t5(adap))
  return 0;

 val[0] = 0xff;
 params[0] = (V_FW_PARAMS_MNEM(FW_PARAMS_MNEM_DEV) |
   V_FW_PARAMS_PARAM_X(FW_PARAMS_PARAM_DEV_MCINIT));
 ret = t4_set_params_timeout(adap, adap->mbox, adap->pf, 0, 1, params, val,
   FW_CMD_MAX_TIMEOUT);

 return ret;
}
