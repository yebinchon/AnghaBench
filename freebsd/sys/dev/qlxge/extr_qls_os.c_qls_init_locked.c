
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ifnet {int if_drv_flags; int if_hwassist; } ;
struct TYPE_9__ {scalar_t__ qla_watchdog_pause; } ;
struct TYPE_10__ {TYPE_1__ flags; struct ifnet* ifp; int mac_addr; } ;
typedef TYPE_2__ qla_host_t ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int bcopy (int ,int ,int ) ;
 scalar_t__ qls_alloc_rcv_bufs (TYPE_2__*) ;
 scalar_t__ qls_config_lro (TYPE_2__*) ;
 int qls_flush_xmt_bufs (TYPE_2__*) ;
 scalar_t__ qls_init_hw_if (TYPE_2__*) ;
 int qls_stop (TYPE_2__*) ;

__attribute__((used)) static void
qls_init_locked(qla_host_t *ha)
{
 struct ifnet *ifp = ha->ifp;

 qls_stop(ha);

 qls_flush_xmt_bufs(ha);

 if (qls_alloc_rcv_bufs(ha) != 0)
  return;

 if (qls_config_lro(ha))
  return;

 bcopy(IF_LLADDR(ha->ifp), ha->mac_addr, ETHER_ADDR_LEN);

 ifp->if_hwassist = CSUM_IP;
 ifp->if_hwassist |= CSUM_TCP;
 ifp->if_hwassist |= CSUM_UDP;
 ifp->if_hwassist |= CSUM_TSO;

  if (qls_init_hw_if(ha) == 0) {
  ifp = ha->ifp;
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  ha->flags.qla_watchdog_pause = 0;
 }

 return;
}
