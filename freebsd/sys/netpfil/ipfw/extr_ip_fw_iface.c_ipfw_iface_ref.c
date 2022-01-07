
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct namedobj_instance {int dummy; } ;
struct ipfw_ifc {struct ipfw_iface* iface; } ;
struct TYPE_2__ {int refcnt; int name; } ;
struct ipfw_iface {scalar_t__ ifindex; int resolved; TYPE_1__ no; int ifname; int consumers; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_II (struct ip_fw_chain*) ;
 int EINVAL ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int free (struct ipfw_iface*,int ) ;
 scalar_t__ ipfw_kiflookup (char*) ;
 int ipfw_objhash_add (struct namedobj_instance*,TYPE_1__*) ;
 scalar_t__ ipfw_objhash_lookup_name (struct namedobj_instance*,int ,char*) ;
 struct ipfw_iface* malloc (int,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;
 int vnet_ipfw_iface_init (struct ip_fw_chain*) ;

int
ipfw_iface_ref(struct ip_fw_chain *ch, char *name,
    struct ipfw_ifc *ic)
{
 struct namedobj_instance *ii;
 struct ipfw_iface *iif, *tmp;

 if (strlen(name) >= sizeof(iif->ifname))
  return (EINVAL);

 IPFW_UH_WLOCK(ch);

 ii = CHAIN_TO_II(ch);
 if (ii == ((void*)0)) {





  IPFW_UH_WUNLOCK(ch);
  vnet_ipfw_iface_init(ch);
  IPFW_UH_WLOCK(ch);
  ii = CHAIN_TO_II(ch);
 }

 iif = (struct ipfw_iface *)ipfw_objhash_lookup_name(ii, 0, name);

 if (iif != ((void*)0)) {
  iif->no.refcnt++;
  ic->iface = iif;
  IPFW_UH_WUNLOCK(ch);
  return (0);
 }

 IPFW_UH_WUNLOCK(ch);


 iif = malloc(sizeof(struct ipfw_iface), M_IPFW, M_WAITOK | M_ZERO);
 TAILQ_INIT(&iif->consumers);
 iif->no.name = iif->ifname;
 strlcpy(iif->ifname, name, sizeof(iif->ifname));







 iif->no.refcnt = 1;
 IPFW_UH_WLOCK(ch);

 tmp = (struct ipfw_iface *)ipfw_objhash_lookup_name(ii, 0, name);
 if (tmp != ((void*)0)) {

  tmp->no.refcnt++;
  ic->iface = tmp;
  IPFW_UH_WUNLOCK(ch);
  free(iif, M_IPFW);
  return (0);
 }

 iif->ifindex = ipfw_kiflookup(name);
 if (iif->ifindex != 0)
  iif->resolved = 1;

 ipfw_objhash_add(ii, &iif->no);
 ic->iface = iif;

 IPFW_UH_WUNLOCK(ch);

 return (0);
}
