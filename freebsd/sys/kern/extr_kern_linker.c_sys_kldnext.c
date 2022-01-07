
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int * td_retval; int td_ucred; } ;
struct kldnext_args {scalar_t__ fileid; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_6__ {int flags; int id; } ;


 int ENOENT ;
 int LINKER_FILE_LINKED ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int kld_sx ;
 int link ;
 int linker_files ;
 TYPE_1__* linker_find_file_by_id (scalar_t__) ;
 int mac_kld_check_stat (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_kldnext(struct thread *td, struct kldnext_args *uap)
{
 linker_file_t lf;
 int error = 0;







 sx_xlock(&kld_sx);
 if (uap->fileid == 0)
  lf = TAILQ_FIRST(&linker_files);
 else {
  lf = linker_find_file_by_id(uap->fileid);
  if (lf == ((void*)0)) {
   error = ENOENT;
   goto out;
  }
  lf = TAILQ_NEXT(lf, link);
 }


 while (lf != ((void*)0) && !(lf->flags & LINKER_FILE_LINKED))
  lf = TAILQ_NEXT(lf, link);

 if (lf)
  td->td_retval[0] = lf->id;
 else
  td->td_retval[0] = 0;
out:
 sx_xunlock(&kld_sx);
 return (error);
}
