
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int key; } ;
struct TYPE_4__ {scalar_t__ shm_nattch; TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_2__ u; } ;


 int IPC_PRIVATE ;
 int SHMSEG_REMOVED ;
 int shm_deallocate_segment (struct shmid_kernel*) ;
 int shm_last_free ;

__attribute__((used)) static void
shm_remove(struct shmid_kernel *shmseg, int segnum)
{

 shmseg->u.shm_perm.key = IPC_PRIVATE;
 shmseg->u.shm_perm.mode |= SHMSEG_REMOVED;
 if (shmseg->u.shm_nattch == 0) {
  shm_deallocate_segment(shmseg);
  shm_last_free = segnum;
 }
}
