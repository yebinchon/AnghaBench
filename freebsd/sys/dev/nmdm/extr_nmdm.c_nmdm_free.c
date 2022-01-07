
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nmdmsoftc {int ns_mtx; } ;
struct nmdmpart {TYPE_1__* np_other; int np_task; int np_callout; struct nmdmsoftc* np_pair; } ;
struct TYPE_2__ {int * np_other; } ;


 int M_NMDM ;
 int atomic_subtract_int (int *,int) ;
 int callout_drain (int *) ;
 int free (struct nmdmsoftc*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nmdm_count ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
nmdm_free(void *softc)
{
 struct nmdmpart *np = (struct nmdmpart *)softc;
 struct nmdmsoftc *ns = np->np_pair;

 callout_drain(&np->np_callout);
 taskqueue_drain(taskqueue_swi, &np->np_task);






 mtx_lock(&ns->ns_mtx);
 if (np->np_other != ((void*)0)) {
  np->np_other->np_other = ((void*)0);
  mtx_unlock(&ns->ns_mtx);
  return;
 }
 mtx_destroy(&ns->ns_mtx);
 free(ns, M_NMDM);
 atomic_subtract_int(&nmdm_count, 1);
}
