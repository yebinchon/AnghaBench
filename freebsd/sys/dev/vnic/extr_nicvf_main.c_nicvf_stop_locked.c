
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct queue_set {int rbdr_cnt; } ;
struct nicvf {struct ifnet* ifp; int stats_callout; struct queue_set* qs; } ;
struct ifnet {int dummy; } ;


 int FALSE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NICVF_CORE_LOCK_ASSERT (struct nicvf*) ;
 int NICVF_INTR_MBOX ;
 int NICVF_INTR_QS_ERR ;
 int NICVF_INTR_RBDR ;
 int NIC_MBOX_MSG_SHUTDOWN ;
 int callout_drain (int *) ;
 int if_setdrvflagbits (struct ifnet*,int ,int ) ;
 int nicvf_clear_intr (struct nicvf*,int ,int) ;
 int nicvf_config_data_transfer (struct nicvf*,int ) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_qset_config (struct nicvf*,int ) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int
nicvf_stop_locked(struct nicvf *nic)
{
 struct ifnet *ifp;
 int qidx;
 struct queue_set *qs = nic->qs;
 union nic_mbx mbx = {};

 NICVF_CORE_LOCK_ASSERT(nic);

 callout_drain(&nic->stats_callout);

 ifp = nic->ifp;

 mbx.msg.msg = NIC_MBOX_MSG_SHUTDOWN;
 nicvf_send_msg_to_pf(nic, &mbx);


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
  nicvf_disable_intr(nic, NICVF_INTR_RBDR, qidx);
  nicvf_clear_intr(nic, NICVF_INTR_RBDR, qidx);
 }
 nicvf_disable_intr(nic, NICVF_INTR_QS_ERR, 0);
 nicvf_clear_intr(nic, NICVF_INTR_QS_ERR, 0);


 if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);


 nicvf_config_data_transfer(nic, FALSE);


 nicvf_qset_config(nic, FALSE);


 nicvf_disable_intr(nic, NICVF_INTR_MBOX, 0);

 return (0);
}
