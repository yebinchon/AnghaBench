
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_4__ {int cols; int rows; } ;
typedef TYPE_1__ HAL_INI_ARRAY ;


 int DMA_YIELD (int) ;
 int HALASSERT (int) ;
 int HAL_INI_VAL (TYPE_1__ const*,int,int) ;
 int OS_DELAY (int) ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;

int
ath_hal_ini_write(struct ath_hal *ah, const HAL_INI_ARRAY *ia,
 int col, int regWr)
{
 int r;

 HALASSERT(col < ia->cols);
 for (r = 0; r < ia->rows; r++) {
  OS_REG_WRITE(ah, HAL_INI_VAL(ia, r, 0),
      HAL_INI_VAL(ia, r, col));


  if (HAL_INI_VAL(ia, r, 0) >= 0x7800 && HAL_INI_VAL(ia, r, 0) < 0x7900)
   OS_DELAY(100);

  DMA_YIELD(regWr);
 }
 return regWr;
}
