
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ shm_perm; int shm_segsz; } ;
struct shmid_kernel {int * cred; TYPE_2__ u; int * object; } ;


 int RACCT_NSHM ;
 int RACCT_SHMSIZE ;
 int SHMSEG_FREE ;
 int SYSVSHM_ASSERT_LOCKED () ;
 scalar_t__ btoc (int) ;
 int crfree (int *) ;
 int mac_sysvshm_cleanup (struct shmid_kernel*) ;
 int racct_sub_cred (int *,int ,int) ;
 int round_page (int ) ;
 int shm_committed ;
 int shm_nused ;
 int vm_object_deallocate (int *) ;

__attribute__((used)) static void
shm_deallocate_segment(struct shmid_kernel *shmseg)
{
 vm_size_t size;

 SYSVSHM_ASSERT_LOCKED();

 vm_object_deallocate(shmseg->object);
 shmseg->object = ((void*)0);
 size = round_page(shmseg->u.shm_segsz);
 shm_committed -= btoc(size);
 shm_nused--;
 shmseg->u.shm_perm.mode = SHMSEG_FREE;



 racct_sub_cred(shmseg->cred, RACCT_NSHM, 1);
 racct_sub_cred(shmseg->cred, RACCT_SHMSIZE, size);
 crfree(shmseg->cred);
 shmseg->cred = ((void*)0);
}
