
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int value; int addr; } ;
typedef TYPE_1__ HAL_REGWRITE ;


 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

__attribute__((used)) static void
ath_hal_setregs(struct ath_hal *ah, const HAL_REGWRITE *regs, int space)
{
 while (space >= sizeof(HAL_REGWRITE)) {
  OS_REG_WRITE(ah, regs->addr, regs->value);
  regs++, space -= sizeof(HAL_REGWRITE);
 }
}
