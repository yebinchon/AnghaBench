
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct port_info {TYPE_1__ mac; } ;
typedef int adapter_t ;


 scalar_t__ A_XGM_XGM_INT_DISABLE ;
 struct port_info* adap2pinfo (int *,int) ;
 int t3_write_reg (int *,scalar_t__,int) ;

void t3_xgm_intr_disable(adapter_t *adapter, int idx)
{
 struct port_info *pi = adap2pinfo(adapter, idx);

 t3_write_reg(adapter, A_XGM_XGM_INT_DISABLE + pi->mac.offset,
       0x7ff);
}
