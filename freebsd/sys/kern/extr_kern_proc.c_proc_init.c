
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_pgrp; int p_stats; int p_threads; int p_pwait; int p_profmtx; int p_itimmtx; int p_statmtx; int p_slock; int p_mtx; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct proc*) ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int MTX_NEW ;
 int MTX_SPIN ;
 int TAILQ_INIT (int *) ;
 int cv_init (int *,char*) ;
 int mtx_init (int *,char*,int *,int) ;
 int process_init ;
 int pstats_alloc () ;

__attribute__((used)) static int
proc_init(void *mem, int size, int flags)
{
 struct proc *p;

 p = (struct proc *)mem;
 mtx_init(&p->p_mtx, "process lock", ((void*)0), MTX_DEF | MTX_DUPOK | MTX_NEW);
 mtx_init(&p->p_slock, "process slock", ((void*)0), MTX_SPIN | MTX_NEW);
 mtx_init(&p->p_statmtx, "pstatl", ((void*)0), MTX_SPIN | MTX_NEW);
 mtx_init(&p->p_itimmtx, "pitiml", ((void*)0), MTX_SPIN | MTX_NEW);
 mtx_init(&p->p_profmtx, "pprofl", ((void*)0), MTX_SPIN | MTX_NEW);
 cv_init(&p->p_pwait, "ppwait");
 TAILQ_INIT(&p->p_threads);
 EVENTHANDLER_DIRECT_INVOKE(process_init, p);
 p->p_stats = pstats_alloc();
 p->p_pgrp = ((void*)0);
 return (0);
}
