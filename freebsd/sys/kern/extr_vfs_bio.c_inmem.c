
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_object_t ;
struct vnode {TYPE_2__* v_mount; int * v_object; int v_bufobj; } ;
typedef scalar_t__ daddr_t ;
struct TYPE_3__ {scalar_t__ f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int VM_OBJECT_RLOCK (int *) ;
 int VM_OBJECT_RUNLOCK (int *) ;
 scalar_t__ incore (int *,scalar_t__) ;
 scalar_t__ vm_page_is_valid (int ,scalar_t__,scalar_t__) ;
 int vm_page_lookup (int *,int ) ;

__attribute__((used)) static int
inmem(struct vnode * vp, daddr_t blkno)
{
 vm_object_t obj;
 vm_offset_t toff, tinc, size;
 vm_page_t m;
 vm_ooffset_t off;

 ASSERT_VOP_LOCKED(vp, "inmem");

 if (incore(&vp->v_bufobj, blkno))
  return 1;
 if (vp->v_mount == ((void*)0))
  return 0;
 obj = vp->v_object;
 if (obj == ((void*)0))
  return (0);

 size = PAGE_SIZE;
 if (size > vp->v_mount->mnt_stat.f_iosize)
  size = vp->v_mount->mnt_stat.f_iosize;
 off = (vm_ooffset_t)blkno * (vm_ooffset_t)vp->v_mount->mnt_stat.f_iosize;

 VM_OBJECT_RLOCK(obj);
 for (toff = 0; toff < vp->v_mount->mnt_stat.f_iosize; toff += tinc) {
  m = vm_page_lookup(obj, OFF_TO_IDX(off + toff));
  if (!m)
   goto notinmem;
  tinc = size;
  if (tinc > PAGE_SIZE - ((toff + off) & PAGE_MASK))
   tinc = PAGE_SIZE - ((toff + off) & PAGE_MASK);
  if (vm_page_is_valid(m,
      (vm_offset_t) ((toff + off) & PAGE_MASK), tinc) == 0)
   goto notinmem;
 }
 VM_OBJECT_RUNLOCK(obj);
 return 1;

notinmem:
 VM_OBJECT_RUNLOCK(obj);
 return (0);
}
