
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;


 struct netmap_adapter* NA (struct ifnet*) ;
 int NAF_SKIP_INTR ;
 int NM_IRQ_PASS ;
 int netmap_common_irq (struct netmap_adapter*,int ,int *) ;
 int nm_netmap_on (struct netmap_adapter*) ;
 int nm_prdis (char*) ;

int
netmap_rx_irq(struct ifnet *ifp, u_int q, u_int *work_done)
{
 struct netmap_adapter *na = NA(ifp);







 if (!nm_netmap_on(na))
  return NM_IRQ_PASS;

 if (na->na_flags & NAF_SKIP_INTR) {
  nm_prdis("use regular interrupt");
  return NM_IRQ_PASS;
 }

 return netmap_common_irq(na, q, work_done);
}
