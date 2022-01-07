
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct prison {int dummy; } ;
struct TYPE_8__ {int mode; } ;
struct TYPE_7__ {TYPE_3__ sem_perm; } ;
struct TYPE_10__ {TYPE_1__* cred; TYPE_2__ u; } ;
struct TYPE_9__ {int semmni; } ;
struct TYPE_6__ {struct prison* cr_prison; } ;


 int SEM_ALLOC ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_mtx ;
 int sem_remove (int,int *) ;
 TYPE_5__* sema ;
 int * sema_mtx ;
 TYPE_4__ seminfo ;

__attribute__((used)) static void
sem_prison_cleanup(struct prison *pr)
{
 int i;


 mtx_lock(&sem_mtx);
 for (i = 0; i < seminfo.semmni; i++) {
  if ((sema[i].u.sem_perm.mode & SEM_ALLOC) &&
      sema[i].cred != ((void*)0) && sema[i].cred->cr_prison == pr) {
   mtx_lock(&sema_mtx[i]);
   sem_remove(i, ((void*)0));
   mtx_unlock(&sema_mtx[i]);
  }
 }
 mtx_unlock(&sem_mtx);
}
