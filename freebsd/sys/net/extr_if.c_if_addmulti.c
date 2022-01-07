
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_len; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int (* if_resolvemulti ) (struct ifnet*,struct sockaddr**,struct sockaddr*) ;int if_addmultitask; int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; struct ifmultiaddr* ifma_llifma; int ifma_refcount; } ;
typedef int sdl ;


 int CK_STAILQ_INSERT_HEAD (int *,struct ifmultiaddr*,int ) ;
 int ENOMEM ;
 int IFMA_F_ENQUEUED ;
 int IF_ADDR_WLOCK (struct ifnet*) ;
 int IF_ADDR_WUNLOCK (struct ifnet*) ;
 int IN6_MULTI_LIST_UNLOCK_ASSERT () ;
 int IN_MULTI_LIST_UNLOCK_ASSERT () ;
 int M_NOWAIT ;
 int RTM_NEWMADDR ;
 int SIOCADDMULTI ;
 scalar_t__ THREAD_CAN_SLEEP () ;
 struct ifmultiaddr* if_allocmulti (struct ifnet*,struct sockaddr*,struct sockaddr*,int ) ;
 struct ifmultiaddr* if_findmulti (struct ifnet*,struct sockaddr*) ;
 int if_freemulti (struct ifmultiaddr*) ;
 int ifma_link ;
 int link_free_sdl (struct sockaddr*) ;
 int rt_newmaddrmsg (int ,struct ifmultiaddr*) ;
 int stub1 (struct ifnet*,struct sockaddr**,struct sockaddr*) ;
 int stub2 (struct ifnet*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

int
if_addmulti(struct ifnet *ifp, struct sockaddr *sa,
    struct ifmultiaddr **retifma)
{
 struct ifmultiaddr *ifma, *ll_ifma;
 struct sockaddr *llsa;
 struct sockaddr_dl sdl;
 int error;
 IF_ADDR_WLOCK(ifp);
 ifma = if_findmulti(ifp, sa);
 if (ifma != ((void*)0)) {
  ifma->ifma_refcount++;
  if (retifma != ((void*)0))
   *retifma = ifma;
  IF_ADDR_WUNLOCK(ifp);
  return (0);
 }
 llsa = ((void*)0);
 ll_ifma = ((void*)0);
 if (ifp->if_resolvemulti != ((void*)0)) {

  sdl.sdl_len = sizeof(sdl);
  llsa = (struct sockaddr *)&sdl;
  error = ifp->if_resolvemulti(ifp, &llsa, sa);
  if (error)
   goto unlock_out;
 }





 ifma = if_allocmulti(ifp, sa, llsa, M_NOWAIT);
 if (ifma == ((void*)0)) {
  error = ENOMEM;
  goto free_llsa_out;
 }







 if (llsa != ((void*)0)) {
  ll_ifma = if_findmulti(ifp, llsa);
  if (ll_ifma == ((void*)0)) {
   ll_ifma = if_allocmulti(ifp, llsa, ((void*)0), M_NOWAIT);
   if (ll_ifma == ((void*)0)) {
    --ifma->ifma_refcount;
    if_freemulti(ifma);
    error = ENOMEM;
    goto free_llsa_out;
   }
   ll_ifma->ifma_flags |= IFMA_F_ENQUEUED;
   CK_STAILQ_INSERT_HEAD(&ifp->if_multiaddrs, ll_ifma,
       ifma_link);
  } else
   ll_ifma->ifma_refcount++;
  ifma->ifma_llifma = ll_ifma;
 }






 ifma->ifma_flags |= IFMA_F_ENQUEUED;
 CK_STAILQ_INSERT_HEAD(&ifp->if_multiaddrs, ifma, ifma_link);

 if (retifma != ((void*)0))
  *retifma = ifma;





 rt_newmaddrmsg(RTM_NEWMADDR, ifma);
 IF_ADDR_WUNLOCK(ifp);





 if (ifp->if_ioctl != ((void*)0)) {
  if (THREAD_CAN_SLEEP())
   (void )(*ifp->if_ioctl)(ifp, SIOCADDMULTI, 0);
  else
   taskqueue_enqueue(taskqueue_swi, &ifp->if_addmultitask);
 }

 if ((llsa != ((void*)0)) && (llsa != (struct sockaddr *)&sdl))
  link_free_sdl(llsa);

 return (0);

free_llsa_out:
 if ((llsa != ((void*)0)) && (llsa != (struct sockaddr *)&sdl))
  link_free_sdl(llsa);

unlock_out:
 IF_ADDR_WUNLOCK(ifp);
 return (error);
}
