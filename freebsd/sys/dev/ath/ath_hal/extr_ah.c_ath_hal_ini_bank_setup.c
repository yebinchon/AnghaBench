
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int cols; int rows; } ;
typedef TYPE_1__ HAL_INI_ARRAY ;


 int HALASSERT (int) ;
 int HAL_INI_VAL (TYPE_1__ const*,int,int) ;

void
ath_hal_ini_bank_setup(uint32_t data[], const HAL_INI_ARRAY *ia, int col)
{
 int r;

 HALASSERT(col < ia->cols);
 for (r = 0; r < ia->rows; r++)
  data[r] = HAL_INI_VAL(ia, r, col);
}
