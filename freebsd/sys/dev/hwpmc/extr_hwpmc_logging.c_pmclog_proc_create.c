
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct pmclog_proc_init_args {int kthr; } ;
struct TYPE_2__ {int p_pid; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int RFHIGHPID ;
 int kproc_create (int ,struct pmclog_proc_init_args*,int *,int ,int ,char*,int ) ;
 struct pmclog_proc_init_args* malloc (int,int ,int) ;
 int pmclog_loop ;

int
pmclog_proc_create(struct thread *td, void **handlep)
{
 struct pmclog_proc_init_args *ia;
 int error;

 ia = malloc(sizeof(*ia), M_TEMP, M_WAITOK | M_ZERO);
 error = kproc_create(pmclog_loop, ia, &ia->kthr,
     RFHIGHPID, 0, "hwpmc: proc(%d)", td->td_proc->p_pid);
 if (error == 0)
  *handlep = ia;
 return (error);
}
