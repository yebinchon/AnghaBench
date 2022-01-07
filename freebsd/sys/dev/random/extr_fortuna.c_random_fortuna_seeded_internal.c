
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs_counter; } ;


 TYPE_1__ fortuna_state ;
 int uint128_is_zero (int ) ;

__attribute__((used)) static bool
random_fortuna_seeded_internal(void)
{
 return (!uint128_is_zero(fortuna_state.fs_counter));
}
