
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {int link_changes; TYPE_3__ linfo; scalar_t__ intf_open; struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;


 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int LIO_IFSTATE_RUNNING ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int if_setdrvflagbits (struct ifnet*,int ,int ) ;
 int lio_dev_info (struct octeon_device*,char*) ;
 int lio_ifstate_reset (struct lio*,int ) ;
 int lio_send_rx_ctrl_cmd (struct lio*,int ) ;

void
lio_stop(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;

 lio_ifstate_reset(lio, LIO_IFSTATE_RUNNING);
 if_link_state_change(ifp, LINK_STATE_DOWN);

 lio->intf_open = 0;
 lio->linfo.link.s.link_up = 0;
 lio->link_changes++;

 lio_send_rx_ctrl_cmd(lio, 0);


 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);

 lio_dev_info(oct, "Interface is stopped\n");
}
