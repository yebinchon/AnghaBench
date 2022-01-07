
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct TYPE_3__ {int refcnt; } ;
struct ipfw_iface {int gencnt; TYPE_1__ no; int ifindex; scalar_t__ resolved; int ifname; } ;
struct dump_iface_args {int sd; } ;
struct TYPE_4__ {int gencnt; int refcnt; int ifindex; int flags; int ifname; } ;
typedef TYPE_2__ ipfw_iface_info ;


 int IPFW_IFFLAG_RESOLVED ;
 int KASSERT (int ,char*) ;
 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
export_iface_internal(struct namedobj_instance *ii, struct named_object *no,
    void *arg)
{
 ipfw_iface_info *i;
 struct dump_iface_args *da;
 struct ipfw_iface *iif;

 da = (struct dump_iface_args *)arg;

 i = (ipfw_iface_info *)ipfw_get_sopt_space(da->sd, sizeof(*i));
 KASSERT(i != ((void*)0), ("previously checked buffer is not enough"));

 iif = (struct ipfw_iface *)no;

 strlcpy(i->ifname, iif->ifname, sizeof(i->ifname));
 if (iif->resolved)
  i->flags |= IPFW_IFFLAG_RESOLVED;
 i->ifindex = iif->ifindex;
 i->refcnt = iif->no.refcnt;
 i->gencnt = iif->gencnt;
 return (0);
}
