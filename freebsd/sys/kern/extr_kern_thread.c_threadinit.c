
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int MTX_DEF ;
 int M_TIDHASH ;
 scalar_t__ PID_MAX ;
 int UMA_ZONE_NOFREE ;
 int hashinit (int,int ,int *) ;
 int maxproc ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (scalar_t__,int ,int *) ;
 int rw_init (int *,char*) ;
 int sched_sizeof_thread () ;
 int thread_ctor ;
 int thread_dtor ;
 int thread_fini ;
 int thread_init ;
 int thread_zone ;
 int tid_lock ;
 int tid_unrhdr ;
 int tidhash ;
 int tidhash_lock ;
 int tidhashtbl ;
 int uma_zcreate (char*,int ,int ,int ,int ,int ,int,int ) ;

void
threadinit(void)
{

 mtx_init(&tid_lock, "TID lock", ((void*)0), MTX_DEF);





 tid_unrhdr = new_unrhdr(PID_MAX + 2, INT_MAX, &tid_lock);

 thread_zone = uma_zcreate("THREAD", sched_sizeof_thread(),
     thread_ctor, thread_dtor, thread_init, thread_fini,
     32 - 1, UMA_ZONE_NOFREE);
 tidhashtbl = hashinit(maxproc / 2, M_TIDHASH, &tidhash);
 rw_init(&tidhash_lock, "tidhash");
}
