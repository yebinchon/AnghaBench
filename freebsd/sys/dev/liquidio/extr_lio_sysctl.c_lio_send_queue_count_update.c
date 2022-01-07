
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct octeon_device {int dummy; } ;
struct TYPE_6__ {void* param2; void* param1; int cmd; } ;
struct TYPE_7__ {TYPE_1__ s; scalar_t__ cmd64; } ;
struct lio_ctrl_pkt {int wait_time; int cb_fn; struct lio* lio; int iq_no; TYPE_2__ ncmd; } ;
struct TYPE_10__ {TYPE_4__* txpciq; } ;
struct lio {struct octeon_device* oct_dev; TYPE_5__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_8__ {int q_no; } ;
struct TYPE_9__ {TYPE_3__ s; } ;


 int LIO_CMD_QUEUE_COUNT_CTL ;
 int bzero (struct lio_ctrl_pkt*,int) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_ctrl_cmd_completion ;
 int lio_dev_err (struct octeon_device*,char*,int) ;
 int lio_send_ctrl_pkt (struct octeon_device*,struct lio_ctrl_pkt*) ;

__attribute__((used)) static int
lio_send_queue_count_update(struct ifnet *ifp, uint32_t num_queues)
{
 struct lio_ctrl_pkt nctrl;
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 int ret = 0;

 bzero(&nctrl, sizeof(struct lio_ctrl_pkt));

 nctrl.ncmd.cmd64 = 0;
 nctrl.ncmd.s.cmd = LIO_CMD_QUEUE_COUNT_CTL;
 nctrl.ncmd.s.param1 = num_queues;
 nctrl.ncmd.s.param2 = num_queues;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.wait_time = 100;
 nctrl.lio = lio;
 nctrl.cb_fn = lio_ctrl_cmd_completion;

 ret = lio_send_ctrl_pkt(lio->oct_dev, &nctrl);
 if (ret < 0) {
  lio_dev_err(oct, "Failed to send Queue reset command (ret: 0x%x)\n",
       ret);
  return (-1);
 }

 return (0);
}
