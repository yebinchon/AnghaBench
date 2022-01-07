
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octeon_device {int dummy; } ;
struct TYPE_9__ {int param2; int more; int param1; int cmd; } ;
struct TYPE_10__ {TYPE_4__ s; scalar_t__ cmd64; } ;
struct lio_ctrl_pkt {TYPE_5__ ncmd; scalar_t__ wait_time; int * udd; int cb_fn; struct lio* lio; int iq_no; } ;
struct TYPE_8__ {TYPE_2__* txpciq; } ;
struct lio {struct octeon_device* oct_dev; TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int q_no; } ;
struct TYPE_7__ {TYPE_1__ s; } ;


 int EINVAL ;
 int LIO_CMD_SET_MULTI_LIST ;
 int bzero (struct lio_ctrl_pkt*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_copy_maddr ;
 int lio_ctrl_cmd_completion ;
 int lio_dev_err (struct octeon_device*,char*,int) ;
 int lio_get_new_flags (struct ifnet*) ;
 int lio_send_ctrl_pkt (struct octeon_device*,struct lio_ctrl_pkt*) ;

__attribute__((used)) static int
lio_set_mcast_list(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 struct lio_ctrl_pkt nctrl;
 int mc_count;
 int ret;

 bzero(&nctrl, sizeof(struct lio_ctrl_pkt));


 nctrl.ncmd.cmd64 = 0;
 nctrl.ncmd.s.cmd = LIO_CMD_SET_MULTI_LIST;
 nctrl.ncmd.s.param1 = lio_get_new_flags(ifp);
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.lio = lio;
 nctrl.cb_fn = lio_ctrl_cmd_completion;


 mc_count = if_foreach_llmaddr(ifp, lio_copy_maddr, &nctrl.udd[0]);





 nctrl.wait_time = 0;
 nctrl.ncmd.s.param2 = mc_count;
 nctrl.ncmd.s.more = mc_count;

 ret = lio_send_ctrl_pkt(lio->oct_dev, &nctrl);
 if (ret < 0) {
  lio_dev_err(oct, "DEVFLAGS change failed in core (ret: 0x%x)\n",
       ret);
 }

 return ((ret) ? EINVAL : 0);
}
