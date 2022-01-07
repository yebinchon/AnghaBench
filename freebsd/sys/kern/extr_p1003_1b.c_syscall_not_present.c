
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; int td_name; } ;
struct nosys_args {int dummy; } ;
struct TYPE_2__ {int p_pid; } ;


 int ENOSYS ;
 int LOG_ERR ;
 int log (int ,char*,int ,int ,char const*) ;

int
syscall_not_present(struct thread *td, const char *s, struct nosys_args *uap)
{
 log(LOG_ERR, "cmd %s pid %d tried to use non-present %s\n",
   td->td_name, td->td_proc->p_pid, s);




 return ENOSYS;
}
