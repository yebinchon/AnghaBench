
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int dummy; } ;
struct cuse_data_chunk {int length; int local_ptr; int peer_ptr; } ;
struct cuse_client_command {scalar_t__ proc_refs; int cv; struct proc* proc_curr; } ;
struct TYPE_2__ {struct proc* td_proc; } ;


 int ENOMEM ;
 int ENXIO ;
 TYPE_1__* curthread ;
 int cuse_lock () ;
 int cuse_proc2proc_copy (struct proc*,int ,struct proc*,int ,int ) ;
 int cuse_unlock () ;
 int cv_signal (int *) ;

__attribute__((used)) static int
cuse_server_data_copy_locked(struct cuse_client_command *pccmd,
    struct cuse_data_chunk *pchk, int isread)
{
 struct proc *p_proc;
 int error;

 p_proc = pccmd->proc_curr;
 if (p_proc == ((void*)0))
  return (ENXIO);

 if (pccmd->proc_refs < 0)
  return (ENOMEM);

 pccmd->proc_refs++;

 cuse_unlock();

 if (isread == 0) {
  error = cuse_proc2proc_copy(
      curthread->td_proc, pchk->local_ptr,
      p_proc, pchk->peer_ptr,
      pchk->length);
 } else {
  error = cuse_proc2proc_copy(
      p_proc, pchk->peer_ptr,
      curthread->td_proc, pchk->local_ptr,
      pchk->length);
 }

 cuse_lock();

 pccmd->proc_refs--;

 if (pccmd->proc_curr == ((void*)0))
  cv_signal(&pccmd->cv);

 return (error);
}
