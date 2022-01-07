
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ seq; int mode; } ;
struct TYPE_5__ {TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_2__ u; } ;
typedef int newsegs ;
struct TYPE_6__ {int shmmni; } ;


 int M_SHM ;
 int M_WAITOK ;
 int M_ZERO ;
 int SHMSEG_FREE ;
 int SYSVSHM_ASSERT_LOCKED () ;
 int bcopy (struct shmid_kernel*,struct shmid_kernel*,int) ;
 int free (struct shmid_kernel*,int ) ;
 int mac_sysvshm_init (struct shmid_kernel*) ;
 struct shmid_kernel* malloc (int,int ,int) ;
 int shmalloced ;
 TYPE_3__ shminfo ;
 struct shmid_kernel* shmsegs ;

__attribute__((used)) static void
shmrealloc(void)
{
 struct shmid_kernel *newsegs;
 int i;

 SYSVSHM_ASSERT_LOCKED();

 if (shmalloced >= shminfo.shmmni)
  return;

 newsegs = malloc(shminfo.shmmni * sizeof(*newsegs), M_SHM,
     M_WAITOK | M_ZERO);
 for (i = 0; i < shmalloced; i++)
  bcopy(&shmsegs[i], &newsegs[i], sizeof(newsegs[0]));
 for (; i < shminfo.shmmni; i++) {
  newsegs[i].u.shm_perm.mode = SHMSEG_FREE;
  newsegs[i].u.shm_perm.seq = 0;



 }
 free(shmsegs, M_SHM);
 shmsegs = newsegs;
 shmalloced = shminfo.shmmni;
}
