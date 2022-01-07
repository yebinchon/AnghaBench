
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_port_control(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return 0;
}
