
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mwl_hal_priv {int dummy; } ;
struct mwl_hal {int dummy; } ;


 int MACREG_REG_PROMISCUOUS ;
 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int MWL_HAL_LOCK (struct mwl_hal_priv*) ;
 int MWL_HAL_UNLOCK (struct mwl_hal_priv*) ;
 int RD4 (struct mwl_hal_priv*,int ) ;
 int WR4 (struct mwl_hal_priv*,int ,int) ;

int
mwl_hal_setpromisc(struct mwl_hal *mh0, int ena)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);
 uint32_t v;

 MWL_HAL_LOCK(mh);
 v = RD4(mh, MACREG_REG_PROMISCUOUS);
 WR4(mh, MACREG_REG_PROMISCUOUS, ena ? v | 1 : v &~ 1);
 MWL_HAL_UNLOCK(mh);
 return 0;
}
