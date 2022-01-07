
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_map_t ;
struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct pmckern_map_in {uintptr_t pm_address; struct vnode* pm_file; } ;
struct mount {int mnt_flag; } ;
struct file {int f_flag; struct vnode* f_vnode; } ;
typedef scalar_t__ boolean_t ;


 int EACCES ;
 int EINVAL ;
 scalar_t__ FALSE ;
 int FPOSIXSHM ;
 int FREAD ;
 int FWRITE ;
 int MAP_NOSYNC ;
 int MAP_SHARED ;
 int MNT_NOEXEC ;
 scalar_t__ OFF_MAX ;
 int PMC_CALL_HOOK_UNLOCKED (struct thread*,int ,void*) ;
 int PMC_FN_MMAP ;
 scalar_t__ PMC_HOOK_INSTALLED (int ) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int vm_mmap_object (int ,scalar_t__*,scalar_t__,int,int,int,int ,scalar_t__,scalar_t__,struct thread*) ;
 int vm_mmap_vnode (struct thread*,scalar_t__,int,int*,int*,struct vnode*,scalar_t__*,int *,scalar_t__*) ;
 int vm_object_deallocate (int ) ;
 int vm_pager_release_writecount (int ,int ,scalar_t__) ;

int
vn_mmap(struct file *fp, vm_map_t map, vm_offset_t *addr, vm_size_t size,
    vm_prot_t prot, vm_prot_t cap_maxprot, int flags, vm_ooffset_t foff,
    struct thread *td)
{



 struct mount *mp;
 struct vnode *vp;
 vm_object_t object;
 vm_prot_t maxprot;
 boolean_t writecounted;
 int error;
 vp = fp->f_vnode;
 mp = vp->v_mount;
 if (mp != ((void*)0) && (mp->mnt_flag & MNT_NOEXEC) != 0) {
  maxprot = VM_PROT_NONE;
  if ((prot & VM_PROT_EXECUTE) != 0)
   return (EACCES);
 } else
  maxprot = VM_PROT_EXECUTE;
 if ((fp->f_flag & FREAD) != 0)
  maxprot |= VM_PROT_READ;
 else if ((prot & VM_PROT_READ) != 0)
  return (EACCES);






 if ((flags & MAP_SHARED) != 0) {
  if ((fp->f_flag & FWRITE) != 0)
   maxprot |= VM_PROT_WRITE;
  else if ((prot & VM_PROT_WRITE) != 0)
   return (EACCES);
 } else {
  maxprot |= VM_PROT_WRITE;
  cap_maxprot |= VM_PROT_WRITE;
 }
 maxprot &= cap_maxprot;
 if (

     size > OFF_MAX ||

     foff < 0 || foff > OFF_MAX - size)
  return (EINVAL);

 writecounted = FALSE;
 error = vm_mmap_vnode(td, size, prot, &maxprot, &flags, vp,
     &foff, &object, &writecounted);
 if (error != 0)
  return (error);
 error = vm_mmap_object(map, addr, size, prot, maxprot, flags, object,
     foff, writecounted, td);
 if (error != 0) {




  if (writecounted)
   vm_pager_release_writecount(object, 0, size);
  vm_object_deallocate(object);
 }
 return (error);
}
