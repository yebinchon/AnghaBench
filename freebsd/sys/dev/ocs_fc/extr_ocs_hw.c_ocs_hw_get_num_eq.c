
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eq_count; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;



int32_t
ocs_hw_get_num_eq(ocs_hw_t *hw)
{
 return hw->eq_count;
}
