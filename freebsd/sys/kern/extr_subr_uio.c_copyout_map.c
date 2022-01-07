
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef size_t vm_offset_t ;
struct vmspace {int vm_map; scalar_t__ vm_daddr; } ;
struct thread {TYPE_1__* td_proc; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;


 int EINVAL ;
 int FALSE ;
 int MAP_ANON ;
 int MAP_PRIVATE ;
 int RLIMIT_DATA ;
 int VM_PROT_ALL ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 size_t lim_max (struct thread*,int ) ;
 size_t round_page (size_t) ;
 int vm_mmap_object (int *,size_t*,scalar_t__,int,int ,int,int *,int ,int ,struct thread*) ;

int
copyout_map(struct thread *td, vm_offset_t *addr, size_t sz)
{
 struct vmspace *vms;
 int error;
 vm_size_t size;

 vms = td->td_proc->p_vmspace;




 *addr = round_page((vm_offset_t)vms->vm_daddr +
     lim_max(td, RLIMIT_DATA));


 size = (vm_size_t)round_page(sz);
 if (size == 0)
  return (EINVAL);
 error = vm_mmap_object(&vms->vm_map, addr, size, VM_PROT_READ |
     VM_PROT_WRITE, VM_PROT_ALL, MAP_PRIVATE | MAP_ANON, ((void*)0), 0,
     FALSE, td);
 return (error);
}
