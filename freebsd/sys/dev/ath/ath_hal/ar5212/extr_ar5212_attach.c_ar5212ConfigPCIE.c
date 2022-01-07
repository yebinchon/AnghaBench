
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_PCIE_SERDES ;
 int AR_PCIE_SERDES2 ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5212ConfigPCIE(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x9248fc00);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x24924924);


 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x28000039);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x53160824);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0xe5980579);


 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x001defff);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x1aaabe40);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0xbe105554);
 OS_REG_WRITE(ah, AR_PCIE_SERDES, 0x000e3007);


 OS_REG_WRITE(ah, AR_PCIE_SERDES2, 0x00000000);
}
