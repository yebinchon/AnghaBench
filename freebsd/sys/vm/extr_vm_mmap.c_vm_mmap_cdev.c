
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int * vm_object_t ;
struct thread {int td_ucred; } ;
struct cdevsw {int d_flags; int (* d_mmap_single ) (struct cdev*,scalar_t__*,int ,int **,int) ;} ;
struct cdev {int dummy; } ;


 int D_MMAP_ANON ;
 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int MAP_ANON ;
 int MAP_COPY ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int OBJT_DEVICE ;
 int VM_PROT_ALL ;
 int VM_PROT_WRITE ;
 int mac_cdev_check_mmap (int ,struct cdev*,int) ;
 int stub1 (struct cdev*,scalar_t__*,int ,int **,int) ;
 int * vm_pager_allocate (int ,struct cdev*,int ,int,scalar_t__,int ) ;

int
vm_mmap_cdev(struct thread *td, vm_size_t objsize, vm_prot_t prot,
    vm_prot_t *maxprotp, int *flagsp, struct cdev *cdev, struct cdevsw *dsw,
    vm_ooffset_t *foff, vm_object_t *objp)
{
 vm_object_t obj;
 int error, flags;

 flags = *flagsp;

 if (dsw->d_flags & D_MMAP_ANON) {
  *objp = ((void*)0);
  *foff = 0;
  *maxprotp = VM_PROT_ALL;
  *flagsp |= MAP_ANON;
  return (0);
 }



 if ((*maxprotp & VM_PROT_WRITE) == 0 &&
     (prot & VM_PROT_WRITE) != 0)
  return (EACCES);
 if (flags & (MAP_PRIVATE|MAP_COPY))
  return (EINVAL);



 flags |= MAP_SHARED;
 error = dsw->d_mmap_single(cdev, foff, objsize, objp, (int)prot);
 if (error != ENODEV)
  return (error);
 obj = vm_pager_allocate(OBJT_DEVICE, cdev, objsize, prot, *foff,
     td->td_ucred);
 if (obj == ((void*)0))
  return (EINVAL);
 *objp = obj;
 *flagsp = flags;
 return (0);
}
