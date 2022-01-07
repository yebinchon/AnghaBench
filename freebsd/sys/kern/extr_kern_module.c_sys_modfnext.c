
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int* td_retval; } ;
struct modfnext_args {int modid; } ;
typedef int * module_t ;
struct TYPE_2__ {int id; } ;


 int ENOENT ;
 int MOD_SLOCK ;
 int MOD_SUNLOCK ;
 TYPE_1__* TAILQ_NEXT (int *,int ) ;
 int flink ;
 int * module_lookupbyid (int ) ;

int
sys_modfnext(struct thread *td, struct modfnext_args *uap)
{
 module_t mod;
 int error;

 td->td_retval[0] = -1;

 MOD_SLOCK;
 mod = module_lookupbyid(uap->modid);
 if (mod == ((void*)0)) {
  error = ENOENT;
 } else {
  error = 0;
  if (TAILQ_NEXT(mod, flink))
   td->td_retval[0] = TAILQ_NEXT(mod, flink)->id;
  else
   td->td_retval[0] = 0;
 }
 MOD_SUNLOCK;
 return (error);
}
