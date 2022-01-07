
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct unpcb {int unp_flags; TYPE_1__* unp_socket; struct sockaddr_un* unp_addr; int unp_refs; struct unpcb* unp_conn; struct vnode* unp_vnode; scalar_t__ unp_gencnt; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {int * so_pcb; } ;


 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 struct unpcb* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct unpcb*,int ) ;
 int MPASS (int) ;
 int M_SONAME ;
 int UNP_LINK_WLOCK () ;
 int UNP_LINK_WUNLOCK () ;
 int UNP_NASCENT ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK_ASSERT (struct unpcb*) ;
 int UNP_REF_LIST_LOCK () ;
 int UNP_REF_LIST_UNLOCK () ;
 int VOP_UNP_DETACH (struct vnode*) ;
 scalar_t__ __predict_false (int) ;
 int free (struct sockaddr_un*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct vnode*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 struct unpcb* sotounpcb (struct socket*) ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 int taskqueue_thread ;
 int unp_count ;
 int unp_disconnect (struct unpcb*,struct unpcb*) ;
 int unp_drop (struct unpcb*) ;
 int unp_gc_task ;
 scalar_t__ unp_gencnt ;
 int unp_link ;
 int unp_pcb_hold (struct unpcb*) ;
 int unp_pcb_owned_lock2 (struct unpcb*,struct unpcb*,int) ;
 scalar_t__ unp_pcb_rele (struct unpcb*) ;
 int unp_rights ;
 int vrele (struct vnode*) ;

__attribute__((used)) static void
uipc_detach(struct socket *so)
{
 struct unpcb *unp, *unp2;
 struct mtx *vplock;
 struct sockaddr_un *saved_unp_addr;
 struct vnode *vp;
 int freeunp, local_unp_rights;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_detach: unp == NULL"));

 vp = ((void*)0);
 vplock = ((void*)0);
 local_unp_rights = 0;

 UNP_LINK_WLOCK();
 LIST_REMOVE(unp, unp_link);
 unp->unp_gencnt = ++unp_gencnt;
 --unp_count;
 UNP_LINK_WUNLOCK();

 UNP_PCB_UNLOCK_ASSERT(unp);
 restart:
 if ((vp = unp->unp_vnode) != ((void*)0)) {
  vplock = mtx_pool_find(mtxpool_sleep, vp);
  mtx_lock(vplock);
 }
 UNP_PCB_LOCK(unp);
 if (unp->unp_vnode != vp &&
  unp->unp_vnode != ((void*)0)) {
  if (vplock)
   mtx_unlock(vplock);
  UNP_PCB_UNLOCK(unp);
  goto restart;
 }
 if ((unp->unp_flags & UNP_NASCENT) != 0) {
  goto teardown;
 }
 if ((vp = unp->unp_vnode) != ((void*)0)) {
  VOP_UNP_DETACH(vp);
  unp->unp_vnode = ((void*)0);
 }
 if (__predict_false(unp == unp->unp_conn)) {
  unp_disconnect(unp, unp);
  unp2 = ((void*)0);
  goto connect_self;
 }
 if ((unp2 = unp->unp_conn) != ((void*)0)) {
  unp_pcb_owned_lock2(unp, unp2, freeunp);
  if (freeunp)
   unp2 = ((void*)0);
 }
 unp_pcb_hold(unp);
 if (unp2 != ((void*)0)) {
  unp_pcb_hold(unp2);
  unp_disconnect(unp, unp2);
  if (unp_pcb_rele(unp2) == 0)
   UNP_PCB_UNLOCK(unp2);
 }
 connect_self:
 UNP_PCB_UNLOCK(unp);
 UNP_REF_LIST_LOCK();
 while (!LIST_EMPTY(&unp->unp_refs)) {
  struct unpcb *ref = LIST_FIRST(&unp->unp_refs);

  unp_pcb_hold(ref);
  UNP_REF_LIST_UNLOCK();

  MPASS(ref != unp);
  UNP_PCB_UNLOCK_ASSERT(ref);
  unp_drop(ref);
  UNP_REF_LIST_LOCK();
 }

 UNP_REF_LIST_UNLOCK();
 UNP_PCB_LOCK(unp);
 freeunp = unp_pcb_rele(unp);
 MPASS(freeunp == 0);
 local_unp_rights = unp_rights;
teardown:
 unp->unp_socket->so_pcb = ((void*)0);
 saved_unp_addr = unp->unp_addr;
 unp->unp_addr = ((void*)0);
 unp->unp_socket = ((void*)0);
 freeunp = unp_pcb_rele(unp);
 if (saved_unp_addr != ((void*)0))
  free(saved_unp_addr, M_SONAME);
 if (!freeunp)
  UNP_PCB_UNLOCK(unp);
 if (vp) {
  mtx_unlock(vplock);
  vrele(vp);
 }
 if (local_unp_rights)
  taskqueue_enqueue_timeout(taskqueue_thread, &unp_gc_task, -1);
}
