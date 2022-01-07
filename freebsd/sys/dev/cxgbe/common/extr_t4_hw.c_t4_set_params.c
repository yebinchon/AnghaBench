
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int FW_CMD_MAX_TIMEOUT ;
 int t4_set_params_timeout (struct adapter*,unsigned int,unsigned int,unsigned int,unsigned int,int const*,int const*,int ) ;

int t4_set_params(struct adapter *adap, unsigned int mbox, unsigned int pf,
    unsigned int vf, unsigned int nparams, const u32 *params,
    const u32 *val)
{
 return t4_set_params_timeout(adap, mbox, pf, vf, nparams, params, val,
         FW_CMD_MAX_TIMEOUT);
}
