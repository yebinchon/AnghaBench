
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_priv {scalar_t__ mh_cmdbuf; } ;
struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int * calTbl; } ;
typedef TYPE_1__ HostCmd_FW_GET_CALTABLE ;


 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int MWL_HAL_LOCK (struct mwl_hal_priv*) ;
 int MWL_HAL_UNLOCK (struct mwl_hal_priv*) ;
 int mwlGetCalTable (struct mwl_hal_priv*,int ,int ) ;

int
mwl_hal_getregioncode(struct mwl_hal *mh0, uint8_t *countryCode)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);
 int retval;

 MWL_HAL_LOCK(mh);
 retval = mwlGetCalTable(mh, 0, 0);
 if (retval == 0) {
  const HostCmd_FW_GET_CALTABLE *pCmd =
      (const HostCmd_FW_GET_CALTABLE *) mh->mh_cmdbuf;
  *countryCode = pCmd->calTbl[16];
 }
 MWL_HAL_UNLOCK(mh);
 return retval;
}
