
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct nfsclclient {TYPE_1__* nfsc_renewthread; } ;
struct TYPE_2__ {int p_threads; } ;


 struct thread* TAILQ_FIRST (int *) ;
 int kproc_exit (int ) ;
 int nfscl_renewthread (struct nfsclclient*,struct thread*) ;

__attribute__((used)) static void
start_nfscl(void *arg)
{
 struct nfsclclient *clp;
 struct thread *td;

 clp = (struct nfsclclient *)arg;
 td = TAILQ_FIRST(&clp->nfsc_renewthread->p_threads);
 nfscl_renewthread(clp, td);
 kproc_exit(0);
}
