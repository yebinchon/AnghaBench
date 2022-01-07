
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct prison {int dummy; } ;
struct TYPE_4__ {scalar_t__ msg_qbytes; } ;
struct msqid_kernel {TYPE_2__* cred; TYPE_1__ u; } ;
struct TYPE_6__ {int msgmni; } ;
struct TYPE_5__ {struct prison* cr_prison; } ;


 TYPE_3__ msginfo ;
 int msq_mtx ;
 int msq_remove (struct msqid_kernel*) ;
 struct msqid_kernel* msqids ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
msg_prison_cleanup(struct prison *pr)
{
 struct msqid_kernel *msqkptr;
 int i;


 mtx_lock(&msq_mtx);
 for (i = 0; i < msginfo.msgmni; i++) {
  msqkptr = &msqids[i];
  if (msqkptr->u.msg_qbytes != 0 &&
      msqkptr->cred != ((void*)0) && msqkptr->cred->cr_prison == pr)
   msq_remove(msqkptr);
 }
 mtx_unlock(&msq_mtx);
}
