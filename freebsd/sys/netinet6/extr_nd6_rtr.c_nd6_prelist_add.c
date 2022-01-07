
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; } ;
struct nd_prefixctl {int ndpr_ifp; int ndpr_plen; TYPE_1__ ndpr_prefix; int ndpr_flags; int ndpr_pltime; int ndpr_vltime; } ;
struct nd_prefix {scalar_t__ ndpr_raf_onlink; int ndpr_mask; TYPE_1__ ndpr_prefix; int ndpr_plen; int ndpr_advrtrs; int ndpr_lastupdate; int ndpr_flags; int ndpr_pltime; int ndpr_vltime; int ndpr_ifp; int ndpr_refcnt; } ;
struct nd_defrouter {int dummy; } ;
struct epoch_tracker {int dummy; } ;


 int ENOMEM ;
 int IN6_MASK_ADDR (int *,int *) ;
 int INET6_ADDRSTRLEN ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct nd_prefix*,int ) ;
 int LOG_ERR ;
 int M_IP6NDP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ND6_ONLINK_LOCK () ;
 int ND6_ONLINK_UNLOCK () ;
 int ND6_WLOCK () ;
 int ND6_WUNLOCK () ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int V_nd6_list_genid ;
 int V_nd_prefix ;
 int free (struct nd_prefix*,int ) ;
 int if_name (int ) ;
 int in6_init_prefix_ltimes (struct nd_prefix*) ;
 int in6_prefixlen2mask (int *,int ) ;
 int ip6_sprintf (char*,int *) ;
 struct nd_prefix* malloc (int,int ,int) ;
 int nd6_prefix_onlink (struct nd_prefix*) ;
 int nd6log (int ) ;
 int ndpr_entry ;
 int pfxrtr_add (struct nd_prefix*,struct nd_defrouter*) ;
 int refcount_init (int *,int) ;
 int time_uptime ;

int
nd6_prelist_add(struct nd_prefixctl *pr, struct nd_defrouter *dr,
    struct nd_prefix **newp)
{
 struct nd_prefix *new;
 char ip6buf[INET6_ADDRSTRLEN];
 int error;

 new = malloc(sizeof(*new), M_IP6NDP, M_NOWAIT | M_ZERO);
 if (new == ((void*)0))
  return (ENOMEM);
 refcount_init(&new->ndpr_refcnt, newp != ((void*)0) ? 2 : 1);
 new->ndpr_ifp = pr->ndpr_ifp;
 new->ndpr_prefix = pr->ndpr_prefix;
 new->ndpr_plen = pr->ndpr_plen;
 new->ndpr_vltime = pr->ndpr_vltime;
 new->ndpr_pltime = pr->ndpr_pltime;
 new->ndpr_flags = pr->ndpr_flags;
 if ((error = in6_init_prefix_ltimes(new)) != 0) {
  free(new, M_IP6NDP);
  return (error);
 }
 new->ndpr_lastupdate = time_uptime;


 LIST_INIT(&new->ndpr_advrtrs);
 in6_prefixlen2mask(&new->ndpr_mask, new->ndpr_plen);

 IN6_MASK_ADDR(&new->ndpr_prefix.sin6_addr, &new->ndpr_mask);

 ND6_WLOCK();
 LIST_INSERT_HEAD(&V_nd_prefix, new, ndpr_entry);
 V_nd6_list_genid++;
 ND6_WUNLOCK();


 if (new->ndpr_raf_onlink) {
  struct epoch_tracker et;

  ND6_ONLINK_LOCK();
  NET_EPOCH_ENTER(et);
  if ((error = nd6_prefix_onlink(new)) != 0) {
   nd6log((LOG_ERR, "nd6_prelist_add: failed to make "
       "the prefix %s/%d on-link on %s (errno=%d)\n",
       ip6_sprintf(ip6buf, &pr->ndpr_prefix.sin6_addr),
       pr->ndpr_plen, if_name(pr->ndpr_ifp), error));

  }
  NET_EPOCH_EXIT(et);
  ND6_ONLINK_UNLOCK();
 }

 if (dr != ((void*)0))
  pfxrtr_add(new, dr);
 if (newp != ((void*)0))
  *newp = new;
 return (0);
}
