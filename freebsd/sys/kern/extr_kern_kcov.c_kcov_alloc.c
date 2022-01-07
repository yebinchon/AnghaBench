
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct kcov_info {scalar_t__ kvaddr; scalar_t__ state; size_t bufsize; size_t entries; int bufobj; } ;
struct TYPE_6__ {int td_ucred; } ;
struct TYPE_5__ {int valid; } ;


 int EINVAL ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 size_t KCOV_ELEMENT_SIZE ;
 scalar_t__ KCOV_STATE_OPEN ;
 int OBJT_PHYS ;
 size_t PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGE_BITS_ALL ;
 TYPE_4__* curthread ;
 size_t kcov_max_entries ;
 scalar_t__ kva_alloc (size_t) ;
 int pmap_qenter (scalar_t__,TYPE_1__**,int) ;
 size_t roundup2 (size_t,size_t) ;
 TYPE_1__* vm_page_grab (int ,size_t,int) ;
 int vm_pager_allocate (int ,int ,size_t,int,int ,int ) ;

__attribute__((used)) static int
kcov_alloc(struct kcov_info *info, size_t entries)
{
 size_t n, pages;
 vm_page_t m;

 KASSERT(info->kvaddr == 0, ("kcov_alloc: Already have a buffer"));
 KASSERT(info->state == KCOV_STATE_OPEN,
     ("kcov_alloc: Not in open state (%x)", info->state));

 if (entries < 2 || entries > kcov_max_entries)
  return (EINVAL);


 info->bufsize = roundup2(entries * KCOV_ELEMENT_SIZE, PAGE_SIZE);
 pages = info->bufsize / PAGE_SIZE;

 if ((info->kvaddr = kva_alloc(info->bufsize)) == 0)
  return (ENOMEM);

 info->bufobj = vm_pager_allocate(OBJT_PHYS, 0, info->bufsize,
     PROT_READ | PROT_WRITE, 0, curthread->td_ucred);

 VM_OBJECT_WLOCK(info->bufobj);
 for (n = 0; n < pages; n++) {
  m = vm_page_grab(info->bufobj, n,
      VM_ALLOC_NOBUSY | VM_ALLOC_ZERO | VM_ALLOC_WIRED);
  m->valid = VM_PAGE_BITS_ALL;
  pmap_qenter(info->kvaddr + n * PAGE_SIZE, &m, 1);
 }
 VM_OBJECT_WUNLOCK(info->bufobj);

 info->entries = entries;

 return (0);
}
