
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_7__ {TYPE_1__ shm_perm; } ;
struct TYPE_8__ {int object; TYPE_2__ u; } ;


 int EBUSY ;
 int M_SHM ;
 scalar_t__ SHMSEG_FREE ;
 int free (TYPE_3__*,int ) ;
 int mac_sysvshm_destroy (TYPE_3__*) ;
 int osd_jail_deregister (scalar_t__) ;
 int shm32_syscalls ;
 scalar_t__ shm_nused ;
 scalar_t__ shm_prison_slot ;
 int shm_syscalls ;
 int shmalloced ;
 int * shmexit_hook ;
 int * shmfork_hook ;
 TYPE_3__* shmsegs ;
 int sx_destroy (int *) ;
 int syscall32_helper_unregister (int ) ;
 int syscall_helper_unregister (int ) ;
 int sysvshmsx ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static int
shmunload(void)
{
 int i;

 if (shm_nused > 0)
  return (EBUSY);




 syscall_helper_unregister(shm_syscalls);
 if (shm_prison_slot != 0)
  osd_jail_deregister(shm_prison_slot);

 for (i = 0; i < shmalloced; i++) {
  if (shmsegs[i].u.shm_perm.mode != SHMSEG_FREE)
   vm_object_deallocate(shmsegs[i].object);
 }
 free(shmsegs, M_SHM);

 shmexit_hook = ((void*)0);
 shmfork_hook = ((void*)0);

 sx_destroy(&sysvshmsx);
 return (0);
}
