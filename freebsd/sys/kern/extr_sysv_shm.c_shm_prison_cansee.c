
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmid_kernel {TYPE_1__* cred; } ;
struct prison {int dummy; } ;
struct TYPE_2__ {struct prison* cr_prison; } ;


 int EINVAL ;
 scalar_t__ prison_ischild (struct prison*,struct prison*) ;

__attribute__((used)) static int
shm_prison_cansee(struct prison *rpr, struct shmid_kernel *shmseg)
{

 if (shmseg->cred == ((void*)0) ||
     !(rpr == shmseg->cred->cr_prison ||
       prison_ischild(rpr, shmseg->cred->cr_prison)))
  return (EINVAL);
 return (0);
}
