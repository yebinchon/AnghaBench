
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int ah_ini_pcieserdes; } ;
struct TYPE_4__ {int ath_hal_war70c; } ;
struct TYPE_5__ {scalar_t__ ah_ispcie; TYPE_1__ ah_config; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_3__* AH5416 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR9285_WA_DEFAULT ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 scalar_t__ AR_SREV_9285E_20 (struct ath_hal*) ;
 int AR_WA ;
 int AR_WA_BIT23 ;
 int AR_WA_BIT6 ;
 int AR_WA_BIT7 ;
 int AR_WA_D3_L1_DISABLE ;
 int OS_DELAY (int) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;
 int ath_hal_ini_write (struct ath_hal*,int *,int,int ) ;

__attribute__((used)) static void
ar9285ConfigPCIE(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
 uint32_t val;
 if (AH_PRIVATE(ah)->ah_ispcie && !restore) {
  ath_hal_ini_write(ah, &AH5416(ah)->ah_ini_pcieserdes, 1, 0);
  OS_DELAY(1000);
 }
 if (power_off) {
  OS_REG_CLR_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

  val = OS_REG_READ(ah, AR_WA);





  val &= ~(AR_WA_BIT6 | AR_WA_BIT7);
  if (AR9285_WA_DEFAULT & AR_WA_D3_L1_DISABLE)
   val |= AR_WA_D3_L1_DISABLE;

  if (AR_SREV_9285E_20(ah))
   val |= AR_WA_BIT23;

  OS_REG_WRITE(ah, AR_WA, val);
 } else {
  val = AR9285_WA_DEFAULT;



  val &= (~AR_WA_D3_L1_DISABLE);


  val |= (AR_WA_BIT6 | AR_WA_BIT7);

  if (AR_SREV_9285E_20(ah))
   val |= AR_WA_BIT23;

  OS_REG_WRITE(ah, AR_WA, val);


  OS_REG_SET_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
 }
}
