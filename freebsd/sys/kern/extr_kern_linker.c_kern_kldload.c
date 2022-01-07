
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int td_ucred; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; int userrefs; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int PRIV_KLD_LOAD ;
 int TD_TO_VNET (struct thread*) ;
 int kld_sx ;
 int linker_load_module (char const*,char const*,int *,int *,TYPE_1__**) ;
 int priv_check (struct thread*,int ) ;
 int securelevel_gt (int ,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
kern_kldload(struct thread *td, const char *file, int *fileid)
{
 const char *kldname, *modname;
 linker_file_t lf;
 int error;

 if ((error = securelevel_gt(td->td_ucred, 0)) != 0)
  return (error);

 if ((error = priv_check(td, PRIV_KLD_LOAD)) != 0)
  return (error);





 CURVNET_SET(TD_TO_VNET(td));






 if (strchr(file, '/') || strchr(file, '.')) {
  kldname = file;
  modname = ((void*)0);
 } else {
  kldname = ((void*)0);
  modname = file;
 }

 sx_xlock(&kld_sx);
 error = linker_load_module(kldname, modname, ((void*)0), ((void*)0), &lf);
 if (error) {
  sx_xunlock(&kld_sx);
  goto done;
 }
 lf->userrefs++;
 if (fileid != ((void*)0))
  *fileid = lf->id;
 sx_xunlock(&kld_sx);

done:
 CURVNET_RESTORE();
 return (error);
}
