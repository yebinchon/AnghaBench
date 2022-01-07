
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_header {scalar_t__ nr_reqtype; } ;
struct nm_bridge {int dummy; } ;
struct netmap_vp_adapter {struct nm_bridge* na_bdg; int bdg_port; } ;
struct netmap_adapter {int dummy; } ;


 scalar_t__ NETMAP_REQ_VALE_ATTACH ;
 int netmap_adapter_put (struct netmap_adapter*) ;
 int netmap_bdg_detach_common (struct nm_bridge*,int ,int) ;
 int netmap_set_all_rings (struct netmap_adapter*,int) ;

int
netmap_vp_bdg_ctl(struct nmreq_header *hdr, struct netmap_adapter *na)
{
 struct netmap_vp_adapter *vpna = (struct netmap_vp_adapter *)na;
 struct nm_bridge *b = vpna->na_bdg;

 if (hdr->nr_reqtype == NETMAP_REQ_VALE_ATTACH) {
  return 0;
 }
 if (b) {
  netmap_set_all_rings(na, 0 );
  netmap_bdg_detach_common(b, vpna->bdg_port, -1);
  vpna->na_bdg = ((void*)0);
  netmap_set_all_rings(na, 1 );
 }

 netmap_adapter_put(na);
 return 0;
}
