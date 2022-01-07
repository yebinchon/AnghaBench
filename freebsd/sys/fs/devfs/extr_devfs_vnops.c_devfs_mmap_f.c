
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_map_t ;
struct vnode {struct mount* v_mount; } ;
struct thread {struct file* td_fpop; } ;
struct mount {int mnt_flag; } ;
struct file {int f_flag; struct vnode* f_vnode; } ;
struct cdevsw {int dummy; } ;
struct cdev {int dummy; } ;


 int EACCES ;
 int FALSE ;
 int FREAD ;
 int FWRITE ;
 int MAP_SHARED ;
 int MNT_NOEXEC ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int dev_relthread (struct cdev*,int) ;
 int devfs_fp_check (struct file*,struct cdev**,struct cdevsw**,int*) ;
 int vm_mmap_cdev (struct thread*,int ,int,int*,int*,struct cdev*,struct cdevsw*,int *,int *) ;
 int vm_mmap_object (int ,int *,int ,int,int,int,int ,int ,int ,struct thread*) ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static int
devfs_mmap_f(struct file *fp, vm_map_t map, vm_offset_t *addr, vm_size_t size,
    vm_prot_t prot, vm_prot_t cap_maxprot, int flags, vm_ooffset_t foff,
    struct thread *td)
{
 struct cdev *dev;
 struct cdevsw *dsw;
 struct mount *mp;
 struct vnode *vp;
 struct file *fpop;
 vm_object_t object;
 vm_prot_t maxprot;
 int error, ref;

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
 }
 maxprot &= cap_maxprot;

 fpop = td->td_fpop;
 error = devfs_fp_check(fp, &dev, &dsw, &ref);
 if (error != 0)
  return (error);

 error = vm_mmap_cdev(td, size, prot, &maxprot, &flags, dev, dsw, &foff,
     &object);
 td->td_fpop = fpop;
 dev_relthread(dev, ref);
 if (error != 0)
  return (error);

 error = vm_mmap_object(map, addr, size, prot, maxprot, flags, object,
     foff, FALSE, td);
 if (error != 0)
  vm_object_deallocate(object);
 return (error);
}
