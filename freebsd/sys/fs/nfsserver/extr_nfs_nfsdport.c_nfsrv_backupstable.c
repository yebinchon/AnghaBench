
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc {int p_comm; TYPE_2__* p_stats; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {TYPE_1__ p_start; } ;


 int PROC_UNLOCK (struct proc*) ;
 int SIGUSR2 ;
 int kern_psignal (struct proc*,int ) ;
 int nfsd_master_comm ;
 int nfsd_master_pid ;
 struct proc* nfsd_master_proc ;
 TYPE_3__ nfsd_master_start ;
 struct proc* pfind (int ) ;
 scalar_t__ strcmp (int ,int ) ;

void
nfsrv_backupstable(void)
{
 struct proc *procp;

 if (nfsd_master_proc != ((void*)0)) {
  procp = pfind(nfsd_master_pid);

  if (procp == nfsd_master_proc &&
      procp->p_stats->p_start.tv_sec ==
      nfsd_master_start.tv_sec &&
      procp->p_stats->p_start.tv_usec ==
      nfsd_master_start.tv_usec &&
      strcmp(procp->p_comm, nfsd_master_comm) == 0)
   kern_psignal(procp, SIGUSR2);
  else
   nfsd_master_proc = ((void*)0);

  if (procp != ((void*)0))
   PROC_UNLOCK(procp);
 }
}
