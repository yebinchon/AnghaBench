
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sysinit {scalar_t__ subsystem; scalar_t__ order; int udata; int (* func ) (int ) ;} ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_4__ {int filename; } ;


 int FILE ;
 int Giant ;
 int KLD_DPF (int ,char*) ;
 int SA_XLOCKED ;
 scalar_t__ SI_SUB_DUMMY ;
 int kld_sx ;
 scalar_t__ linker_file_lookup_set (TYPE_1__*,char*,struct sysinit***,struct sysinit***,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
linker_file_sysuninit(linker_file_t lf)
{
 struct sysinit **start, **stop, **sipp, **xipp, *save;

 KLD_DPF(FILE, ("linker_file_sysuninit: calling SYSUNINITs for %s\n",
     lf->filename));

 sx_assert(&kld_sx, SA_XLOCKED);

 if (linker_file_lookup_set(lf, "sysuninit_set", &start, &stop,
     ((void*)0)) != 0)
  return;
 for (sipp = start; sipp < stop; sipp++) {
  for (xipp = sipp + 1; xipp < stop; xipp++) {
   if ((*sipp)->subsystem > (*xipp)->subsystem ||
       ((*sipp)->subsystem == (*xipp)->subsystem &&
       (*sipp)->order >= (*xipp)->order))
    continue;
   save = *sipp;
   *sipp = *xipp;
   *xipp = save;
  }
 }





 sx_xunlock(&kld_sx);
 mtx_lock(&Giant);
 for (sipp = start; sipp < stop; sipp++) {
  if ((*sipp)->subsystem == SI_SUB_DUMMY)
   continue;


  (*((*sipp)->func)) ((*sipp)->udata);
 }
 mtx_unlock(&Giant);
 sx_xlock(&kld_sx);
}
