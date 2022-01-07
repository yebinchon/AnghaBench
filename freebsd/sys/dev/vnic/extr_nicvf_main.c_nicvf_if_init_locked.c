
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_set {int cq_cnt; int rbdr_cnt; } ;
struct TYPE_2__ {scalar_t__ txq_wake; scalar_t__ txq_stop; } ;
struct nicvf {int stats_callout; TYPE_1__ drv_stats; int hwaddr; struct ifnet* ifp; struct queue_set* qs; } ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int ETHER_ADDR_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NICVF_CORE_LOCK_ASSERT (struct nicvf*) ;
 int NICVF_INTR_CQ ;
 int NICVF_INTR_QS_ERR ;
 int NICVF_INTR_RBDR ;
 int NIC_VF_INT ;
 int callout_reset (int *,int ,int ,struct nicvf*) ;
 int hz ;
 int if_getdrvflags (struct ifnet*) ;
 int if_getlladdr (struct ifnet*) ;
 int if_printf (struct ifnet*,char*) ;
 int if_setdrvflagbits (struct ifnet*,int,int) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int nicvf_enable_intr (struct nicvf*,int ,int) ;
 int nicvf_enable_misc_interrupt (struct nicvf*) ;
 int nicvf_hw_set_mac_addr (struct nicvf*,int ) ;
 int nicvf_init_resources (struct nicvf*) ;
 int nicvf_reg_write (struct nicvf*,int ,unsigned long) ;
 int nicvf_stop_locked (struct nicvf*) ;
 int nicvf_tick_stats ;
 int wmb () ;

__attribute__((used)) static void
nicvf_if_init_locked(struct nicvf *nic)
{
 struct queue_set *qs = nic->qs;
 struct ifnet *ifp;
 int qidx;
 int err;
 caddr_t if_addr;

 NICVF_CORE_LOCK_ASSERT(nic);
 ifp = nic->ifp;

 if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0)
  nicvf_stop_locked(nic);

 err = nicvf_enable_misc_interrupt(nic);
 if (err != 0) {
  if_printf(ifp, "Could not reenable Mbox interrupt\n");
  return;
 }


 if_addr = if_getlladdr(ifp);

 if (memcmp(nic->hwaddr, if_addr, ETHER_ADDR_LEN) != 0) {
  memcpy(nic->hwaddr, if_addr, ETHER_ADDR_LEN);
  nicvf_hw_set_mac_addr(nic, if_addr);
 }


 err = nicvf_init_resources(nic);
 if (err != 0)
  goto error;


 wmb();

 nicvf_reg_write(nic, NIC_VF_INT, ~0UL);

 nicvf_enable_intr(nic, NICVF_INTR_QS_ERR, 0);


 for (qidx = 0; qidx < qs->cq_cnt; qidx++)
  nicvf_enable_intr(nic, NICVF_INTR_CQ, qidx);


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
  nicvf_enable_intr(nic, NICVF_INTR_RBDR, qidx);

 nic->drv_stats.txq_stop = 0;
 nic->drv_stats.txq_wake = 0;


 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);


 callout_reset(&nic->stats_callout, hz, nicvf_tick_stats, nic);

 return;

error:

 if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
}
