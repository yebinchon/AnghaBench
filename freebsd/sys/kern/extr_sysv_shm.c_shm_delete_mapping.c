
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
struct vmspace {int vm_map; } ;
struct shmmap_state {int shmid; scalar_t__ va; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ shm_nattch; TYPE_1__ shm_perm; int shm_dtime; int shm_segsz; } ;
struct shmid_kernel {TYPE_2__ u; } ;


 int EINVAL ;
 int IPCID_TO_IX (int) ;
 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 int SHMSEG_REMOVED ;
 int SYSVSHM_ASSERT_LOCKED () ;
 scalar_t__ round_page (int ) ;
 int shm_deallocate_segment (struct shmid_kernel*) ;
 int shm_last_free ;
 int shmalloced ;
 struct shmid_kernel* shmsegs ;
 int time_second ;
 int vm_map_remove (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
shm_delete_mapping(struct vmspace *vm, struct shmmap_state *shmmap_s)
{
 struct shmid_kernel *shmseg;
 int segnum, result;
 vm_size_t size;

 SYSVSHM_ASSERT_LOCKED();
 segnum = IPCID_TO_IX(shmmap_s->shmid);
 KASSERT(segnum >= 0 && segnum < shmalloced,
     ("segnum %d shmalloced %d", segnum, shmalloced));

 shmseg = &shmsegs[segnum];
 size = round_page(shmseg->u.shm_segsz);
 result = vm_map_remove(&vm->vm_map, shmmap_s->va, shmmap_s->va + size);
 if (result != KERN_SUCCESS)
  return (EINVAL);
 shmmap_s->shmid = -1;
 shmseg->u.shm_dtime = time_second;
 if (--shmseg->u.shm_nattch == 0 &&
     (shmseg->u.shm_perm.mode & SHMSEG_REMOVED)) {
  shm_deallocate_segment(shmseg);
  shm_last_free = segnum;
 }
 return (0);
}
