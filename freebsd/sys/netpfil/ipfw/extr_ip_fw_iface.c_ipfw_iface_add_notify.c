
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_ifc {int cbdata; int (* cb ) (struct ip_fw_chain*,int ,int ) ;struct ipfw_iface* iface; } ;
struct ipfw_iface {scalar_t__ resolved; int ifindex; int consumers; } ;
struct ip_fw_chain {int dummy; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int TAILQ_INSERT_TAIL (int *,struct ipfw_ifc*,int ) ;
 int next ;
 int stub1 (struct ip_fw_chain*,int ,int ) ;

void
ipfw_iface_add_notify(struct ip_fw_chain *ch, struct ipfw_ifc *ic)
{
 struct ipfw_iface *iif;

 IPFW_UH_WLOCK_ASSERT(ch);
 IPFW_WLOCK_ASSERT(ch);

 iif = ic->iface;

 TAILQ_INSERT_TAIL(&iif->consumers, ic, next);
 if (iif->resolved != 0)
  ic->cb(ch, ic->cbdata, iif->ifindex);
}
