
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef int * vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct shmfd {int shm_size; int shm_seals; scalar_t__ shm_kmappings; int shm_ctime; int shm_mtime; TYPE_1__* shm_object; } ;
typedef int off_t ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ type; int charge; int cred; } ;


 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int F_SEAL_GROW ;
 int F_SEAL_SHRINK ;
 scalar_t__ IDX_TO_OFF (scalar_t__) ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int RA_WLOCKED ;
 int VM_ALLOC_NOCREAT ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VM_PAGER_OK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_zero_page_area (int *,int,scalar_t__) ;
 int rangelock_cookie_assert (void*,int ) ;
 int shm_timestamp_lock ;
 int swap_pager_freespace (TYPE_1__*,scalar_t__,scalar_t__) ;
 int swap_release_by_cred (scalar_t__,int ) ;
 int swap_reserve_by_cred (scalar_t__,int ) ;
 int vfs_timestamp (int *) ;
 int vm_object_page_remove (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int vm_page_all_valid (int *) ;
 int * vm_page_alloc (TYPE_1__*,scalar_t__,int) ;
 int vm_page_dirty (int *) ;
 int vm_page_free (int *) ;
 int * vm_page_grab (TYPE_1__*,scalar_t__,int ) ;
 int vm_page_launder (int *) ;
 int vm_page_xunbusy (int *) ;
 int vm_pager_get_pages (TYPE_1__*,int **,int,int *,int *) ;
 scalar_t__ vm_pager_has_page (TYPE_1__*,scalar_t__,int *,int *) ;
 int vm_pager_page_unswapped (int *) ;

__attribute__((used)) static int
shm_dotruncate_locked(struct shmfd *shmfd, off_t length, void *rl_cookie)
{
 vm_object_t object;
 vm_page_t m;
 vm_pindex_t idx, nobjsize;
 vm_ooffset_t delta;
 int base, rv;

 KASSERT(length >= 0, ("shm_dotruncate: length < 0"));
 object = shmfd->shm_object;
 VM_OBJECT_ASSERT_WLOCKED(object);
 rangelock_cookie_assert(rl_cookie, RA_WLOCKED);
 if (length == shmfd->shm_size)
  return (0);
 nobjsize = OFF_TO_IDX(length + PAGE_MASK);


 if (length < shmfd->shm_size) {
  if ((shmfd->shm_seals & F_SEAL_SHRINK) != 0)
   return (EPERM);





  if (shmfd->shm_kmappings > 0)
   return (EBUSY);




  base = length & PAGE_MASK;
  if (base != 0) {
   idx = OFF_TO_IDX(length);
retry:
   m = vm_page_grab(object, idx, VM_ALLOC_NOCREAT);
   if (m != ((void*)0)) {
    MPASS(vm_page_all_valid(m));
   } else if (vm_pager_has_page(object, idx, ((void*)0), ((void*)0))) {
    m = vm_page_alloc(object, idx,
        VM_ALLOC_NORMAL | VM_ALLOC_WAITFAIL);
    if (m == ((void*)0))
     goto retry;
    rv = vm_pager_get_pages(object, &m, 1, ((void*)0),
        ((void*)0));
    if (rv == VM_PAGER_OK) {
     vm_page_launder(m);
    } else {
     vm_page_free(m);
     VM_OBJECT_WUNLOCK(object);
     return (EIO);
    }
   }
   if (m != ((void*)0)) {
    pmap_zero_page_area(m, base, PAGE_SIZE - base);
    KASSERT(vm_page_all_valid(m),
        ("shm_dotruncate: page %p is invalid", m));
    vm_page_dirty(m);
    vm_page_xunbusy(m);
    vm_pager_page_unswapped(m);
   }
  }
  delta = IDX_TO_OFF(object->size - nobjsize);


  if (nobjsize < object->size)
   vm_object_page_remove(object, nobjsize, object->size,
       0);


  if (object->type == OBJT_SWAP)
   swap_pager_freespace(object, nobjsize, delta);


  swap_release_by_cred(delta, object->cred);
  object->charge -= delta;
 } else {
  if ((shmfd->shm_seals & F_SEAL_GROW) != 0)
   return (EPERM);


  delta = IDX_TO_OFF(nobjsize - object->size);
  if (!swap_reserve_by_cred(delta, object->cred))
   return (ENOMEM);
  object->charge += delta;
 }
 shmfd->shm_size = length;
 mtx_lock(&shm_timestamp_lock);
 vfs_timestamp(&shmfd->shm_ctime);
 shmfd->shm_mtime = shmfd->shm_ctime;
 mtx_unlock(&shm_timestamp_lock);
 object->size = nobjsize;
 return (0);
}
