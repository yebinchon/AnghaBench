
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct semid_kernel {TYPE_1__* cred; } ;
struct prison {int dummy; } ;
struct TYPE_2__ {struct prison* cr_prison; } ;


 int EINVAL ;
 scalar_t__ prison_ischild (struct prison*,struct prison*) ;

__attribute__((used)) static int
sem_prison_cansee(struct prison *rpr, struct semid_kernel *semakptr)
{

 if (semakptr->cred == ((void*)0) ||
     !(rpr == semakptr->cred->cr_prison ||
       prison_ischild(rpr, semakptr->cred->cr_prison)))
  return (EINVAL);
 return (0);
}
