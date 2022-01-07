
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {int na_flags; scalar_t__ na_next_pipe; scalar_t__ active_fds; struct netmap_mem_d* nm_mem; struct netmap_mem_d* nm_mem_prev; } ;
struct ifnet {int dummy; } ;


 int EOPNOTSUPP ;
 struct netmap_adapter* NA (struct ifnet*) ;
 int NAF_FORCE_NATIVE ;
 int NAF_MEM_OWNER ;
 int NETMAP_ADMODE_BEST ;
 int NETMAP_ADMODE_GENERIC ;
 int NETMAP_ADMODE_LAST ;
 int NETMAP_ADMODE_NATIVE ;
 scalar_t__ NETMAP_OWNED_BY_ANY (struct netmap_adapter*) ;
 int NM_IS_NATIVE (struct ifnet*) ;
 scalar_t__ NM_NA_VALID (struct ifnet*) ;
 int generic_netmap_attach (struct ifnet*) ;
 int netmap_admode ;
 struct netmap_mem_d* netmap_mem_get (struct netmap_mem_d*) ;

int
netmap_get_hw_na(struct ifnet *ifp, struct netmap_mem_d *nmd, struct netmap_adapter **na)
{

 int i = netmap_admode;
 struct netmap_adapter *prev_na;
 int error = 0;

 *na = ((void*)0);


 if (i < NETMAP_ADMODE_BEST || i >= NETMAP_ADMODE_LAST)
  i = netmap_admode = NETMAP_ADMODE_BEST;

 if (NM_NA_VALID(ifp)) {
  prev_na = NA(ifp);





  if (NETMAP_OWNED_BY_ANY(prev_na)
   || i != NETMAP_ADMODE_GENERIC
   || prev_na->na_flags & NAF_FORCE_NATIVE






  ) {
   *na = prev_na;
   goto assign_mem;
  }
 }




 if (!NM_IS_NATIVE(ifp) && i == NETMAP_ADMODE_NATIVE)
  return EOPNOTSUPP;
 error = generic_netmap_attach(ifp);
 if (error)
  return error;

 *na = NA(ifp);

assign_mem:
 if (nmd != ((void*)0) && !((*na)->na_flags & NAF_MEM_OWNER) &&
     (*na)->active_fds == 0 && ((*na)->nm_mem != nmd)) {
  (*na)->nm_mem_prev = (*na)->nm_mem;
  (*na)->nm_mem = netmap_mem_get(nmd);
 }

 return 0;
}
