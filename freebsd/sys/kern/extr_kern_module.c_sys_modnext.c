
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int* td_retval; } ;
struct modnext_args {scalar_t__ modid; } ;
typedef TYPE_1__* module_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int id; } ;


 int ENOENT ;
 int MOD_SLOCK ;
 int MOD_SUNLOCK ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_3__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int link ;
 TYPE_1__* module_lookupbyid (scalar_t__) ;
 int modules ;

int
sys_modnext(struct thread *td, struct modnext_args *uap)
{
 module_t mod;
 int error = 0;

 td->td_retval[0] = -1;

 MOD_SLOCK;
 if (uap->modid == 0) {
  mod = TAILQ_FIRST(&modules);
  if (mod)
   td->td_retval[0] = mod->id;
  else
   error = ENOENT;
  goto done2;
 }
 mod = module_lookupbyid(uap->modid);
 if (mod == ((void*)0)) {
  error = ENOENT;
  goto done2;
 }
 if (TAILQ_NEXT(mod, link))
  td->td_retval[0] = TAILQ_NEXT(mod, link)->id;
 else
  td->td_retval[0] = 0;
done2:
 MOD_SUNLOCK;
 return (error);
}
