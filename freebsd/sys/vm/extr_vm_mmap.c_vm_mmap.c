
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int * vm_object_t ;
typedef int vm_map_t ;
struct thread {int dummy; } ;
struct cdevsw {int dummy; } ;
struct cdev {int dummy; } ;
typedef int objtype_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ FALSE ;



 struct thread* curthread ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 scalar_t__ round_page (scalar_t__) ;
 int vm_mmap_cdev (struct thread*,scalar_t__,int ,int *,int*,struct cdev*,struct cdevsw*,int *,int **) ;
 int vm_mmap_object (int ,int *,scalar_t__,int ,int ,int,int *,int ,scalar_t__,struct thread*) ;
 int vm_mmap_vnode (struct thread*,scalar_t__,int ,int *,int*,void*,int *,int **,scalar_t__*) ;
 int vm_object_deallocate (int *) ;
 int vm_pager_release_writecount (int *,int ,scalar_t__) ;

int
vm_mmap(vm_map_t map, vm_offset_t *addr, vm_size_t size, vm_prot_t prot,
 vm_prot_t maxprot, int flags,
 objtype_t handle_type, void *handle,
 vm_ooffset_t foff)
{
 vm_object_t object;
 struct thread *td = curthread;
 int error;
 boolean_t writecounted;

 if (size == 0)
  return (EINVAL);

 size = round_page(size);
 object = ((void*)0);
 writecounted = FALSE;




 switch (handle_type) {
 case 129: {
  struct cdevsw *dsw;
  struct cdev *cdev;
  int ref;

  cdev = handle;
  dsw = dev_refthread(cdev, &ref);
  if (dsw == ((void*)0))
   return (ENXIO);
  error = vm_mmap_cdev(td, size, prot, &maxprot, &flags, cdev,
      dsw, &foff, &object);
  dev_relthread(cdev, ref);
  break;
 }
 case 128:
  error = vm_mmap_vnode(td, size, prot, &maxprot, &flags,
      handle, &foff, &object, &writecounted);
  break;
 case 130:
  if (handle == ((void*)0)) {
   error = 0;
   break;
  }

 default:
  error = EINVAL;
  break;
 }
 if (error)
  return (error);

 error = vm_mmap_object(map, addr, size, prot, maxprot, flags, object,
     foff, writecounted, td);
 if (error != 0 && object != ((void*)0)) {




  if (writecounted)
   vm_pager_release_writecount(object, 0, size);
  vm_object_deallocate(object);
 }
 return (error);
}
