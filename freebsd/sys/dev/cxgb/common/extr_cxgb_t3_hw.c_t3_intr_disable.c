
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ slow_intr_mask; } ;
typedef TYPE_1__ adapter_t ;


 int A_PL_INT_ENABLE0 ;
 int t3_read_reg (TYPE_1__*,int ) ;
 int t3_write_reg (TYPE_1__*,int ,int ) ;

void t3_intr_disable(adapter_t *adapter)
{
 t3_write_reg(adapter, A_PL_INT_ENABLE0, 0);
 (void) t3_read_reg(adapter, A_PL_INT_ENABLE0);
 adapter->slow_intr_mask = 0;
}
