
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct vnode {scalar_t__ v_type; TYPE_2__* v_object; int v_mount; } ;
struct mount {int dummy; } ;
struct TYPE_19__ {scalar_t__ type; struct vnode* handle; } ;
struct TYPE_18__ {scalar_t__ pindex; scalar_t__ dirty; TYPE_2__* object; } ;


 int EBUSY ;
 int EDEADLK ;
 int EIO ;
 int ENOENT ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 int LK_EXCLUSIVE ;
 int LK_SHARED ;
 int LK_TIMELOCK ;
 int MA_NOTOWNED ;
 scalar_t__ MNT_SHARED_WRITES (int ) ;
 scalar_t__ OBJT_VNODE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 scalar_t__ VREG ;
 int V_NOWAIT ;
 int curthread ;
 scalar_t__ vget (struct vnode*,int,int ) ;
 int vm_object_deallocate (TYPE_2__*) ;
 int vm_object_reference_locked (TYPE_2__*) ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_in_laundry (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_lock_assert (TYPE_1__*,int ) ;
 int vm_page_try_remove_write (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vm_pageout_cluster (TYPE_1__*) ;
 int vn_finished_write (struct mount*) ;
 scalar_t__ vn_start_write (struct vnode*,struct mount**,int ) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
vm_pageout_clean(vm_page_t m, int *numpagedout)
{
 struct vnode *vp;
 struct mount *mp;
 vm_object_t object;
 vm_pindex_t pindex;
 int error, lockmode;

 vm_page_assert_locked(m);
 object = m->object;
 VM_OBJECT_ASSERT_WLOCKED(object);
 error = 0;
 vp = ((void*)0);
 mp = ((void*)0);
 if (object->type == OBJT_VNODE) {
  vm_page_unlock(m);
  vm_page_xunbusy(m);
  vp = object->handle;
  if (vp->v_type == VREG &&
      vn_start_write(vp, &mp, V_NOWAIT) != 0) {
   mp = ((void*)0);
   error = EDEADLK;
   goto unlock_all;
  }
  KASSERT(mp != ((void*)0),
      ("vp %p with NULL v_mount", vp));
  vm_object_reference_locked(object);
  pindex = m->pindex;
  VM_OBJECT_WUNLOCK(object);
  lockmode = MNT_SHARED_WRITES(vp->v_mount) ?
      LK_SHARED : LK_EXCLUSIVE;
  if (vget(vp, lockmode | LK_TIMELOCK, curthread)) {
   vp = ((void*)0);
   error = EDEADLK;
   goto unlock_mp;
  }
  VM_OBJECT_WLOCK(object);





  if (vp->v_object != object) {
   error = ENOENT;
   goto unlock_all;
  }
  vm_page_lock(m);
  if (!vm_page_in_laundry(m) || m->object != object ||
      m->pindex != pindex || m->dirty == 0) {
   vm_page_unlock(m);
   error = ENXIO;
   goto unlock_all;
  }





  if (vm_page_tryxbusy(m) == 0) {
   vm_page_unlock(m);
   error = EBUSY;
   goto unlock_all;
  }
 }




 if (!vm_page_try_remove_write(m)) {
  vm_page_xunbusy(m);
  vm_page_unlock(m);
  error = EBUSY;
  goto unlock_all;
 }
 vm_page_unlock(m);







 if ((*numpagedout = vm_pageout_cluster(m)) == 0)
  error = EIO;

unlock_all:
 VM_OBJECT_WUNLOCK(object);

unlock_mp:
 vm_page_lock_assert(m, MA_NOTOWNED);
 if (mp != ((void*)0)) {
  if (vp != ((void*)0))
   vput(vp);
  vm_object_deallocate(object);
  vn_finished_write(mp);
 }

 return (error);
}
