
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {struct vnode* handle; } ;


 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VM_PAGER_PUT_SYNC ;
 int VOP_PUTPAGES (struct vnode*,int *,int,int,int*) ;
 scalar_t__ vm_page_count_min () ;

__attribute__((used)) static void
vnode_pager_putpages(vm_object_t object, vm_page_t *m, int count,
    int flags, int *rtvals)
{
 int rtval;
 struct vnode *vp;
 int bytes = count * PAGE_SIZE;
 if (vm_page_count_min())
  flags |= VM_PAGER_PUT_SYNC;




 vp = object->handle;
 VM_OBJECT_WUNLOCK(object);
 rtval = VOP_PUTPAGES(vp, m, bytes, flags, rtvals);
 KASSERT(rtval != EOPNOTSUPP,
     ("vnode_pager: stale FS putpages\n"));
 VM_OBJECT_WLOCK(object);
}
