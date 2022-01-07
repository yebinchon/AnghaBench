
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_4__ {int ah_ini_pcieserdes; } ;
struct TYPE_3__ {scalar_t__ ah_ispcie; } ;
typedef int HAL_BOOL ;


 TYPE_2__* AH5416 (struct ath_hal*) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR9285_WA_DEFAULT ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 int AR_WA ;
 int OS_DELAY (int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ath_hal_ini_write (struct ath_hal*,int *,int,int ) ;

__attribute__((used)) static void
ar9287ConfigPCIE(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
 if (AH_PRIVATE(ah)->ah_ispcie && !restore) {
  ath_hal_ini_write(ah, &AH5416(ah)->ah_ini_pcieserdes, 1, 0);
  OS_DELAY(1000);
  OS_REG_SET_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

  OS_REG_WRITE(ah, AR_WA, AR9285_WA_DEFAULT);
 }
}
