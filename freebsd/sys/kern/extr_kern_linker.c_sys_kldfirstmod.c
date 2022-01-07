
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int * td_retval; int td_ucred; } ;
struct kldfirstmod_args {int fileid; } ;
typedef int * module_t ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int modules; } ;


 int ENOENT ;
 int MOD_SLOCK ;
 int MOD_SUNLOCK ;
 int * TAILQ_FIRST (int *) ;
 int kld_sx ;
 TYPE_1__* linker_find_file_by_id (int ) ;
 int mac_kld_check_stat (int ) ;
 int module_getid (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_kldfirstmod(struct thread *td, struct kldfirstmod_args *uap)
{
 linker_file_t lf;
 module_t mp;
 int error = 0;







 sx_xlock(&kld_sx);
 lf = linker_find_file_by_id(uap->fileid);
 if (lf) {
  MOD_SLOCK;
  mp = TAILQ_FIRST(&lf->modules);
  if (mp != ((void*)0))
   td->td_retval[0] = module_getid(mp);
  else
   td->td_retval[0] = 0;
  MOD_SUNLOCK;
 } else
  error = ENOENT;
 sx_xunlock(&kld_sx);
 return (error);
}
