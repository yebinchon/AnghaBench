
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct thread {scalar_t__ td_vp_reserv; } ;


 int atomic_add_long (scalar_t__*,int) ;
 scalar_t__ atomic_fetchadd_long (scalar_t__*,scalar_t__) ;
 int atomic_subtract_long (scalar_t__*,scalar_t__) ;
 struct thread* curthread ;
 scalar_t__ desiredvnodes ;
 scalar_t__ freevnodes ;
 scalar_t__ getnewvnode_wait (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ numvnodes ;
 int ulmin (scalar_t__,scalar_t__) ;
 int vcheckspace () ;
 int vnlru_free_locked (int ,int *) ;
 int vnode_free_list_mtx ;
 scalar_t__ wantfreevnodes ;

void
getnewvnode_reserve(u_int count)
{
 struct thread *td;



 mtx_lock(&vnode_free_list_mtx);
 if (numvnodes + count > desiredvnodes && freevnodes > wantfreevnodes)
  vnlru_free_locked(ulmin(numvnodes + count - desiredvnodes,
      freevnodes - wantfreevnodes), ((void*)0));
 mtx_unlock(&vnode_free_list_mtx);

 td = curthread;

 if (atomic_fetchadd_long(&numvnodes, count) + count <= desiredvnodes) {
  td->td_vp_reserv += count;
  vcheckspace();
  return;
 } else
  atomic_subtract_long(&numvnodes, count);

 mtx_lock(&vnode_free_list_mtx);
 while (count > 0) {
  if (getnewvnode_wait(0) == 0) {
   count--;
   td->td_vp_reserv++;
   atomic_add_long(&numvnodes, 1);
  }
 }
 vcheckspace();
 mtx_unlock(&vnode_free_list_mtx);
}
