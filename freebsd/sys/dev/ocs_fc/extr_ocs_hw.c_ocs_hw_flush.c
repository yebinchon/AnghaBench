
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ eq_count; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 int ocs_hw_process (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static int32_t
ocs_hw_flush(ocs_hw_t *hw)
{
 uint32_t i = 0;


 for (i = 0; i < hw->eq_count; i++) {
  ocs_hw_process(hw, i, ~0);
 }

 return 0;
}
