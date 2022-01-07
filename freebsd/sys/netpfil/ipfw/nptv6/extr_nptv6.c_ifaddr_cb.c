
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nptv6_cfg {int flags; int mask; int internal; int external; int if_name; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int kidx; } ;
struct ip_fw_chain {int dummy; } ;
struct ifaddr_event_args {scalar_t__ event; TYPE_1__* ifp; int * addr; } ;
struct TYPE_3__ {int if_flags; int if_xname; } ;


 scalar_t__ IFADDR_EVENT_DEL ;
 int IFF_DYING ;
 int IF_NAMESIZE ;
 scalar_t__ IN6_ARE_MASKED_ADDR_EQUAL (int *,int *,int *) ;
 int MPASS (int) ;
 int NPTV6_DYNAMIC_PREFIX ;
 int NPTV6_READY ;
 scalar_t__ SRV_OBJECT (struct ip_fw_chain*,int ) ;
 struct ip_fw_chain V_layer3_chain ;
 int if_ref (TYPE_1__*) ;
 scalar_t__ nptv6_check_prefix (int *) ;
 int nptv6_find_prefix (struct ip_fw_chain*,struct nptv6_cfg*,TYPE_1__*) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int
ifaddr_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct ifaddr_event_args *args;
 struct ip_fw_chain *ch;
 struct nptv6_cfg *cfg;

 ch = &V_layer3_chain;
 cfg = (struct nptv6_cfg *)SRV_OBJECT(ch, no->kidx);
 if ((cfg->flags & NPTV6_DYNAMIC_PREFIX) == 0)
  return (0);

 args = arg;

 if (strncmp(args->ifp->if_xname, cfg->if_name, IF_NAMESIZE))
  return (0);
 if (args->ifp->if_flags & IFF_DYING) {
  cfg->flags &= ~NPTV6_READY;
  return (0);
 }
 if (args->event == IFADDR_EVENT_DEL) {

  if ((cfg->flags & NPTV6_READY) == 0)
   return (0);

  if (IN6_ARE_MASKED_ADDR_EQUAL(&cfg->external, args->addr,
      &cfg->mask) != 0)
   return (0);

  cfg->flags &= ~NPTV6_READY;
 } else {

  if (cfg->flags & NPTV6_READY)
   return (0);

  if (nptv6_check_prefix(args->addr) ||
      IN6_ARE_MASKED_ADDR_EQUAL(args->addr, &cfg->internal,
      &cfg->mask))
   return (0);

 }
 MPASS(!(cfg->flags & NPTV6_READY));

 if_ref(args->ifp);
 nptv6_find_prefix(ch, cfg, args->ifp);
 return (0);
}
