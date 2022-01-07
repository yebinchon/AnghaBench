
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipfw_ifc {struct ipfw_iface* iface; } ;
struct TYPE_2__ {int refcnt; } ;
struct ipfw_iface {TYPE_1__ no; } ;
struct ip_fw_chain {int dummy; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;

void
ipfw_iface_unref(struct ip_fw_chain *ch, struct ipfw_ifc *ic)
{
 struct ipfw_iface *iif;

 IPFW_UH_WLOCK_ASSERT(ch);

 iif = ic->iface;
 ic->iface = ((void*)0);

 iif->no.refcnt--;

}
