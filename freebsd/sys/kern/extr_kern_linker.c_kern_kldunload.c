
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int td_ucred; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_4__ {scalar_t__ userrefs; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EBUSY ;
 int ENOENT ;
 int FILE ;
 int KLD_DPF (int ,char*) ;
 int PRIV_KLD_UNLOAD ;
 int TD_TO_VNET (struct thread*) ;
 int kld_sx ;
 int linker_file_unload (TYPE_1__*,int) ;
 TYPE_1__* linker_find_file_by_id (int) ;
 int printf (char*) ;
 int priv_check (struct thread*,int ) ;
 int securelevel_gt (int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
kern_kldunload(struct thread *td, int fileid, int flags)
{
 linker_file_t lf;
 int error = 0;

 if ((error = securelevel_gt(td->td_ucred, 0)) != 0)
  return (error);

 if ((error = priv_check(td, PRIV_KLD_UNLOAD)) != 0)
  return (error);

 CURVNET_SET(TD_TO_VNET(td));
 sx_xlock(&kld_sx);
 lf = linker_find_file_by_id(fileid);
 if (lf) {
  KLD_DPF(FILE, ("kldunload: lf->userrefs=%d\n", lf->userrefs));

  if (lf->userrefs == 0) {



   printf("kldunload: attempt to unload file that was"
       " loaded by the kernel\n");
   error = EBUSY;
  } else {
   lf->userrefs--;
   error = linker_file_unload(lf, flags);
   if (error)
    lf->userrefs++;
  }
 } else
  error = ENOENT;
 sx_xunlock(&kld_sx);

 CURVNET_RESTORE();
 return (error);
}
