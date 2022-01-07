
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct octeon_device {int dummy; } ;
struct TYPE_6__ {int more; scalar_t__ param1; int cmd; } ;
struct TYPE_7__ {TYPE_1__ s; scalar_t__ cmd64; } ;
struct lio_ctrl_pkt {int wait_time; scalar_t__* udd; int cb_fn; struct lio* lio; int iq_no; TYPE_2__ ncmd; } ;
struct TYPE_10__ {int hw_addr; TYPE_4__* txpciq; } ;
struct lio {TYPE_5__ linfo; struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;
struct TYPE_8__ {int q_no; } ;
struct TYPE_9__ {TYPE_3__ s; } ;


 int EADDRNOTAVAIL ;
 int ENOMEM ;
 int ETHER_HDR_LEN ;
 int LIO_CMD_CHANGE_MACADDR ;
 int bzero (struct lio_ctrl_pkt*,int) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_ctrl_cmd_completion ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_is_valid_ether_addr (int *) ;
 int lio_send_ctrl_pkt (struct octeon_device*,struct lio_ctrl_pkt*) ;
 int memcpy (int *,int *,int ) ;

int
lio_set_mac(struct ifnet *ifp, uint8_t *p)
{
 struct lio_ctrl_pkt nctrl;
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 int ret = 0;

 if (!lio_is_valid_ether_addr(p))
  return (EADDRNOTAVAIL);

 bzero(&nctrl, sizeof(struct lio_ctrl_pkt));

 nctrl.ncmd.cmd64 = 0;
 nctrl.ncmd.s.cmd = LIO_CMD_CHANGE_MACADDR;
 nctrl.ncmd.s.param1 = 0;
 nctrl.ncmd.s.more = 1;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.lio = lio;
 nctrl.cb_fn = lio_ctrl_cmd_completion;
 nctrl.wait_time = 100;

 nctrl.udd[0] = 0;

 memcpy((uint8_t *)&nctrl.udd[0] + 2, p, ETHER_HDR_LEN);

 ret = lio_send_ctrl_pkt(lio->oct_dev, &nctrl);
 if (ret < 0) {
  lio_dev_err(oct, "MAC Address change failed\n");
  return (ENOMEM);
 }

 memcpy(((uint8_t *)&lio->linfo.hw_addr) + 2, p, ETHER_HDR_LEN);

 return (0);
}
