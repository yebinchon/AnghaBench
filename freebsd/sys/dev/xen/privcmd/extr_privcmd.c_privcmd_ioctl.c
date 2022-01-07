
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xen_ulong_t ;
typedef int xen_pfn_t ;
typedef int vm_prot_t ;
typedef int vm_pindex_t ;
typedef TYPE_5__* vm_object_t ;
typedef int * vm_map_t ;
typedef TYPE_6__* vm_map_entry_t ;
typedef int uint16_t ;
struct xen_add_to_physmap_range {int size; int errs; int gpfns; int idxs; int foreign_domid; int space; int domid; } ;
struct thread {TYPE_2__* td_proc; } ;
struct privcmd_map {int* err; int mapped; int phys_base_addr; } ;
struct ioctl_privcmd_mmapbatch {int num; int addr; int * err; int * arr; int dom; } ;
struct ioctl_privcmd_hypercall {int retval; int * arg; int op; } ;
struct cdev {int dummy; } ;
typedef int idxs ;
typedef int errs ;
typedef scalar_t__ caddr_t ;
typedef int boolean_t ;
struct TYPE_15__ {int start; int end; } ;
struct TYPE_12__ {int * ops; } ;
struct TYPE_13__ {TYPE_3__ devp; } ;
struct TYPE_14__ {struct privcmd_map* handle; TYPE_4__ un_pager; int type; } ;
struct TYPE_11__ {TYPE_1__* p_vmspace; } ;
struct TYPE_10__ {int vm_map; } ;


 int* BITSET_ALLOC (int,int ,int) ;
 int BIT_SET (int,int,int*) ;
 int CPUID_STDEXT_SMAP ;
 int DOMID_SELF ;
 int EINVAL ;
 int ENOSYS ;
 int HYPERVISOR_memory_op (int ,struct xen_add_to_physmap_range*) ;


 int KERN_SUCCESS ;
 int MIN (int,int ) ;
 int M_PRIVCMD ;
 int M_WAITOK ;
 int M_ZERO ;
 int OBJT_MGTDEVICE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int UINT16_MAX ;
 int VM_PROT_NONE ;
 int XENMAPSPACE_gmfn_foreign ;
 int XENMEM_add_to_physmap_range ;
 int atop (int ) ;
 int bzero (int*,int) ;
 int clac () ;
 int copyin (int *,int*,int) ;
 int copyout (int*,int *,int) ;
 int cpu_stdext_feature ;
 int free (int*,int ) ;
 int* malloc (int,int ,int) ;
 int privcmd_hypercall (int ,int ,int ,int ,int ,int ) ;
 int privcmd_pg_ops ;
 int set_xen_guest_handle (int ,int*) ;
 int stac () ;
 int vm_map_lookup (int **,int,int ,TYPE_6__**,TYPE_5__**,int *,int *,int *) ;
 int vm_map_lookup_done (int *,TYPE_6__*) ;
 int xen_translate_error (int) ;

__attribute__((used)) static int
privcmd_ioctl(struct cdev *dev, unsigned long cmd, caddr_t arg,
       int mode, struct thread *td)
{
 int error, i;

 switch (cmd) {
 case 129: {
  struct ioctl_privcmd_hypercall *hcall;

  hcall = (struct ioctl_privcmd_hypercall *)arg;






  if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
   stac();

  error = privcmd_hypercall(hcall->op, hcall->arg[0],
      hcall->arg[1], hcall->arg[2], hcall->arg[3], hcall->arg[4]);

  if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
   clac();

  if (error >= 0) {
   hcall->retval = error;
   error = 0;
  } else {
   error = xen_translate_error(error);
   hcall->retval = 0;
  }
  break;
 }
 case 128: {
  struct ioctl_privcmd_mmapbatch *mmap;
  vm_map_t map;
  vm_map_entry_t entry;
  vm_object_t mem;
  vm_pindex_t pindex;
  vm_prot_t prot;
  boolean_t wired;
  struct xen_add_to_physmap_range add;
  xen_ulong_t *idxs;
  xen_pfn_t *gpfns;
  int *errs, index;
  struct privcmd_map *umap;
  uint16_t num;

  mmap = (struct ioctl_privcmd_mmapbatch *)arg;

  if ((mmap->num == 0) ||
      ((mmap->addr & PAGE_MASK) != 0)) {
   error = EINVAL;
   break;
  }

  map = &td->td_proc->p_vmspace->vm_map;
  error = vm_map_lookup(&map, mmap->addr, VM_PROT_NONE, &entry,
      &mem, &pindex, &prot, &wired);
  if (error != KERN_SUCCESS) {
   error = EINVAL;
   break;
  }
  if ((entry->start != mmap->addr) ||
      (entry->end != mmap->addr + (mmap->num * PAGE_SIZE))) {
   vm_map_lookup_done(map, entry);
   error = EINVAL;
   break;
  }
  vm_map_lookup_done(map, entry);
  if ((mem->type != OBJT_MGTDEVICE) ||
      (mem->un_pager.devp.ops != &privcmd_pg_ops)) {
   error = EINVAL;
   break;
  }
  umap = mem->handle;

  add.domid = DOMID_SELF;
  add.space = XENMAPSPACE_gmfn_foreign;
  add.foreign_domid = mmap->dom;





  num = MIN(mmap->num, UINT16_MAX);

  idxs = malloc(sizeof(*idxs) * num, M_PRIVCMD, M_WAITOK);
  gpfns = malloc(sizeof(*gpfns) * num, M_PRIVCMD, M_WAITOK);
  errs = malloc(sizeof(*errs) * num, M_PRIVCMD, M_WAITOK);

  set_xen_guest_handle(add.idxs, idxs);
  set_xen_guest_handle(add.gpfns, gpfns);
  set_xen_guest_handle(add.errs, errs);


  umap->err = BITSET_ALLOC(mmap->num, M_PRIVCMD,
      M_WAITOK | M_ZERO);

  for (index = 0; index < mmap->num; index += num) {
   num = MIN(mmap->num - index, UINT16_MAX);
   add.size = num;

   error = copyin(&mmap->arr[index], idxs,
       sizeof(idxs[0]) * num);
   if (error != 0)
    goto mmap_out;

   for (i = 0; i < num; i++)
    gpfns[i] = atop(umap->phys_base_addr +
        (i + index) * PAGE_SIZE);

   bzero(errs, sizeof(*errs) * num);

   error = HYPERVISOR_memory_op(
       XENMEM_add_to_physmap_range, &add);
   if (error != 0) {
    error = xen_translate_error(error);
    goto mmap_out;
   }

   for (i = 0; i < num; i++) {
    if (errs[i] != 0) {
     errs[i] = xen_translate_error(errs[i]);


     BIT_SET(mmap->num, index + i,
         umap->err);
    }
   }

   error = copyout(errs, &mmap->err[index],
       sizeof(errs[0]) * num);
   if (error != 0)
    goto mmap_out;
  }

  umap->mapped = 1;

mmap_out:
  free(idxs, M_PRIVCMD);
  free(gpfns, M_PRIVCMD);
  free(errs, M_PRIVCMD);
  if (!umap->mapped)
   free(umap->err, M_PRIVCMD);

  break;
 }

 default:
  error = ENOSYS;
  break;
 }

 return (error);
}
