
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct port_info {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef int adapter_t ;
struct TYPE_5__ {int (* intr_clear ) (TYPE_3__*) ;} ;


 scalar_t__ A_XGM_INT_CAUSE ;
 struct port_info* adap2pinfo (int *,int) ;
 int stub1 (TYPE_3__*) ;
 int t3_write_reg (int *,scalar_t__,int) ;

void t3_port_intr_clear(adapter_t *adapter, int idx)
{
 struct port_info *pi = adap2pinfo(adapter, idx);

 t3_write_reg(adapter, A_XGM_INT_CAUSE + pi->mac.offset, 0xffffffff);
 pi->phy.ops->intr_clear(&pi->phy);
}
