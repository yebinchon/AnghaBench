
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_3__* cred; TYPE_2__ u; } ;
struct prison {int dummy; } ;
struct TYPE_6__ {struct prison* cr_prison; } ;


 int SHMSEG_ALLOCATED ;
 int shm_remove (struct shmid_kernel*,int) ;
 int shmalloced ;
 struct shmid_kernel* shmsegs ;

__attribute__((used)) static void
shm_prison_cleanup(struct prison *pr)
{
 struct shmid_kernel *shmseg;
 int i;


 for (i = 0; i < shmalloced; i++) {
  shmseg = &shmsegs[i];
  if ((shmseg->u.shm_perm.mode & SHMSEG_ALLOCATED) &&
      shmseg->cred != ((void*)0) && shmseg->cred->cr_prison == pr) {
   shm_remove(shmseg, i);
  }
 }
}
