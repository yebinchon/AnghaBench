
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ixl_pf {int dev; } ;
struct TYPE_4__ {int param0; int param1; } ;
struct TYPE_5__ {TYPE_1__ external; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct i40e_arq_event_info {TYPE_3__ desc; } ;
typedef int device_t ;


 int I40E_PRTDCB_RUPTQ_RXQNUM_MASK ;
 int I40E_PRTDCB_RUPTQ_RXQNUM_SHIFT ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
ixl_handle_lan_overflow_event(struct ixl_pf *pf, struct i40e_arq_event_info *e)
{
 device_t dev = pf->dev;
 u32 rxq_idx, qtx_ctl;

 rxq_idx = (e->desc.params.external.param0 & I40E_PRTDCB_RUPTQ_RXQNUM_MASK) >>
     I40E_PRTDCB_RUPTQ_RXQNUM_SHIFT;
 qtx_ctl = e->desc.params.external.param1;

 device_printf(dev, "LAN overflow event: global rxq_idx %d\n", rxq_idx);
 device_printf(dev, "LAN overflow event: QTX_CTL 0x%08x\n", qtx_ctl);
}
