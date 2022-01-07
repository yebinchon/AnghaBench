
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx {int dummy; } ;
struct lockf_entry {scalar_t__ lf_refs; size_t lo_hash; scalar_t__ lo_refs; int lf_flags; int * lf_vnode; scalar_t__ lo_vertex; int lf_inedges; int lf_outedges; struct lockf_entry* lf_owner; } ;
struct lock_owner {scalar_t__ lf_refs; size_t lo_hash; scalar_t__ lo_refs; int lf_flags; int * lf_vnode; scalar_t__ lo_vertex; int lf_inedges; int lf_outedges; struct lock_owner* lf_owner; } ;
struct TYPE_2__ {struct sx lock; } ;


 int F_REMOTE ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct lockf_entry*,int ) ;
 int M_LOCKF ;
 int free (struct lockf_entry*,int ) ;
 int graph_free_vertex (int *,scalar_t__) ;
 TYPE_1__* lf_lock_owners ;
 int lf_owner_graph ;
 struct sx lf_owner_graph_lock ;
 int lo_link ;
 int lockf_debug ;
 int printf (char*,struct lockf_entry*) ;
 int sx_unlock (struct sx*) ;
 int sx_xlock (struct sx*) ;
 int sx_xunlock (struct sx*) ;
 int vrele (int *) ;

__attribute__((used)) static int
lf_free_lock(struct lockf_entry *lock)
{
 struct sx *chainlock;

 KASSERT(lock->lf_refs > 0, ("lockf_entry negative ref count %p", lock));
 if (--lock->lf_refs > 0)
  return (0);





 struct lock_owner *lo = lock->lf_owner;
 if (lo) {
  KASSERT(LIST_EMPTY(&lock->lf_outedges),
      ("freeing lock with dependencies"));
  KASSERT(LIST_EMPTY(&lock->lf_inedges),
      ("freeing lock with dependants"));
  chainlock = &lf_lock_owners[lo->lo_hash].lock;
  sx_xlock(chainlock);
  KASSERT(lo->lo_refs > 0, ("lock owner refcount"));
  lo->lo_refs--;
  if (lo->lo_refs == 0) {





   if (lo->lo_vertex) {
    sx_xlock(&lf_owner_graph_lock);
    graph_free_vertex(&lf_owner_graph,
        lo->lo_vertex);
    sx_xunlock(&lf_owner_graph_lock);
   }
   LIST_REMOVE(lo, lo_link);
   free(lo, M_LOCKF);




  }
  sx_unlock(chainlock);
 }
 if ((lock->lf_flags & F_REMOTE) && lock->lf_vnode) {
  vrele(lock->lf_vnode);
  lock->lf_vnode = ((void*)0);
 }




 free(lock, M_LOCKF);
 return (1);
}
