
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vop_getpages_iodone_t ;
typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {struct vnode* handle; } ;


 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VOP_GETPAGES_ASYNC (struct vnode*,int *,int,int*,int*,int ,void*) ;

__attribute__((used)) static int
vnode_pager_getpages_async(vm_object_t object, vm_page_t *m, int count,
    int *rbehind, int *rahead, vop_getpages_iodone_t iodone, void *arg)
{
 struct vnode *vp;
 int rtval;

 vp = object->handle;
 VM_OBJECT_WUNLOCK(object);
 rtval = VOP_GETPAGES_ASYNC(vp, m, count, rbehind, rahead, iodone, arg);
 KASSERT(rtval != EOPNOTSUPP,
     ("vnode_pager: FS getpages_async not implemented\n"));
 VM_OBJECT_WLOCK(object);
 return (rtval);
}
