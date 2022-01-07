
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_pindex_t ;
typedef size_t vm_offset_t ;
typedef scalar_t__ vm_object_t ;
typedef int vm_map_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct shmfd {scalar_t__ shm_object; scalar_t__ shm_kmappings; } ;
struct file {scalar_t__ f_type; struct shmfd* f_data; } ;
typedef int boolean_t ;
struct TYPE_4__ {size_t start; size_t end; } ;


 scalar_t__ DTYPE_SHM ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 size_t PAGE_MASK ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int kernel_map ;
 size_t round_page (size_t) ;
 size_t trunc_page (size_t) ;
 int vm_map_lookup (int *,size_t,int,TYPE_1__**,scalar_t__*,int *,int *,int *) ;
 int vm_map_lookup_done (int ,TYPE_1__*) ;
 int vm_map_remove (int ,size_t,size_t) ;

int
shm_unmap(struct file *fp, void *mem, size_t size)
{
 struct shmfd *shmfd;
 vm_map_entry_t entry;
 vm_offset_t kva, ofs;
 vm_object_t obj;
 vm_pindex_t pindex;
 vm_prot_t prot;
 boolean_t wired;
 vm_map_t map;
 int rv;

 if (fp->f_type != DTYPE_SHM)
  return (EINVAL);
 shmfd = fp->f_data;
 kva = (vm_offset_t)mem;
 ofs = kva & PAGE_MASK;
 kva = trunc_page(kva);
 size = round_page(size + ofs);
 map = kernel_map;
 rv = vm_map_lookup(&map, kva, VM_PROT_READ | VM_PROT_WRITE, &entry,
     &obj, &pindex, &prot, &wired);
 if (rv != KERN_SUCCESS)
  return (EINVAL);
 if (entry->start != kva || entry->end != kva + size) {
  vm_map_lookup_done(map, entry);
  return (EINVAL);
 }
 vm_map_lookup_done(map, entry);
 if (obj != shmfd->shm_object)
  return (EINVAL);
 vm_map_remove(map, kva, kva + size);
 VM_OBJECT_WLOCK(obj);
 KASSERT(shmfd->shm_kmappings > 0, ("shm_unmap: object not mapped"));
 shmfd->shm_kmappings--;
 VM_OBJECT_WUNLOCK(obj);
 return (0);
}
