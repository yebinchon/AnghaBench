
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct unpcb {struct unpcb* unp_conn; struct vnode* unp_vnode; } ;
struct socket {int dummy; } ;
struct mtx {int dummy; } ;


 int KASSERT (int ,char*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int VOP_UNP_DETACH (struct vnode*) ;
 scalar_t__ __predict_false (int) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct vnode*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_disconnect (struct unpcb*,struct unpcb*) ;
 int unp_pcb_hold (struct unpcb*) ;
 int unp_pcb_owned_lock2 (struct unpcb*,struct unpcb*,int) ;
 scalar_t__ unp_pcb_rele (struct unpcb*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static void
uipc_close(struct socket *so)
{
 struct unpcb *unp, *unp2;
 struct vnode *vp = ((void*)0);
 struct mtx *vplock;
 int freed;
 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_close: unp == NULL"));


 vplock = ((void*)0);
 if ((vp = unp->unp_vnode) != ((void*)0)) {
  vplock = mtx_pool_find(mtxpool_sleep, vp);
  mtx_lock(vplock);
 }
 UNP_PCB_LOCK(unp);
 if (vp && unp->unp_vnode == ((void*)0)) {
  mtx_unlock(vplock);
  vp = ((void*)0);
 }
 if (vp != ((void*)0)) {
  VOP_UNP_DETACH(vp);
  unp->unp_vnode = ((void*)0);
 }
 unp2 = unp->unp_conn;
 unp_pcb_hold(unp);
 if (__predict_false(unp == unp2)) {
  unp_disconnect(unp, unp2);
 } else if (unp2 != ((void*)0)) {
  unp_pcb_hold(unp2);
  unp_pcb_owned_lock2(unp, unp2, freed);
  unp_disconnect(unp, unp2);
  if (unp_pcb_rele(unp2) == 0)
   UNP_PCB_UNLOCK(unp2);
 }
 if (unp_pcb_rele(unp) == 0)
  UNP_PCB_UNLOCK(unp);
 if (vp) {
  mtx_unlock(vplock);
  vrele(vp);
 }
}
