
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mh_imask; } ;
struct mwl_hal_priv {TYPE_1__ public; } ;
struct mwl_hal {int dummy; } ;


 int MACREG_REG_A2H_INTERRUPT_MASK ;
 int MACREG_REG_INT_CODE ;
 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int RD4 (struct mwl_hal_priv*,int ) ;
 int WR4 (struct mwl_hal_priv*,int ,int ) ;

void
mwl_hal_intrset(struct mwl_hal *mh0, uint32_t mask)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);

 WR4(mh, MACREG_REG_A2H_INTERRUPT_MASK, 0);
 RD4(mh, MACREG_REG_INT_CODE);

 mh->public.mh_imask = mask;
 WR4(mh, MACREG_REG_A2H_INTERRUPT_MASK, mask);
 RD4(mh, MACREG_REG_INT_CODE);
}
