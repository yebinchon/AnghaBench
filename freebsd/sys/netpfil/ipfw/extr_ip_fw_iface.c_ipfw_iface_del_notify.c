
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_ifc {struct ipfw_iface* iface; } ;
struct ipfw_iface {int consumers; } ;
struct ip_fw_chain {int dummy; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int TAILQ_REMOVE (int *,struct ipfw_ifc*,int ) ;
 int next ;

void
ipfw_iface_del_notify(struct ip_fw_chain *ch, struct ipfw_ifc *ic)
{
 struct ipfw_iface *iif;

 IPFW_UH_WLOCK_ASSERT(ch);

 iif = ic->iface;
 TAILQ_REMOVE(&iif->consumers, ic, next);
}
