
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; scalar_t__ seq; } ;
struct TYPE_4__ {TYPE_1__ sem_perm; } ;
struct semid_kernel {TYPE_2__ u; } ;
struct prison {int dummy; } ;


 int EINVAL ;
 scalar_t__ IPCID_TO_SEQ (int) ;
 int SEM_ALLOC ;
 scalar_t__ sem_prison_cansee (struct prison*,struct semid_kernel*) ;

__attribute__((used)) static int
semvalid(int semid, struct prison *rpr, struct semid_kernel *semakptr)
{

 return ((semakptr->u.sem_perm.mode & SEM_ALLOC) == 0 ||
     semakptr->u.sem_perm.seq != IPCID_TO_SEQ(semid) ||
     sem_prison_cansee(rpr, semakptr) ? EINVAL : 0);
}
