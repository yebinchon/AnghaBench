
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int rows; } ;
typedef TYPE_1__ HAL_INI_ARRAY ;


 int DMA_YIELD (int) ;
 int HAL_INI_VAL (TYPE_1__ const*,int,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int const) ;

int
ath_hal_ini_bank_write(struct ath_hal *ah, const HAL_INI_ARRAY *ia,
 const uint32_t data[], int regWr)
{
 int r;

 for (r = 0; r < ia->rows; r++) {
  OS_REG_WRITE(ah, HAL_INI_VAL(ia, r, 0), data[r]);
  DMA_YIELD(regWr);
 }
 return regWr;
}
