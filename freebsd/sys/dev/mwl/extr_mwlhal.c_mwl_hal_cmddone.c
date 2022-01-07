
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_priv {int mh_debug; int mh_dev; } ;
struct mwl_hal {int dummy; } ;


 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int MWL_HAL_DEBUG_CMDDONE ;
 int device_printf (int ,char*) ;
 int dumpresult (struct mwl_hal_priv*,int) ;

void
mwl_hal_cmddone(struct mwl_hal *mh0)
{
}
