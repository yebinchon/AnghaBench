
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_ksi; int p_mtx; int p_stats; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct proc*) ;
 int FIRST_THREAD_IN_PROC (struct proc*) ;
 int ksiginfo_free (int *) ;
 int mtx_destroy (int *) ;
 int panic (char*) ;
 int process_fini ;
 int pstats_free (int ) ;
 int thread_free (int ) ;

__attribute__((used)) static void
proc_fini(void *mem, int size)
{
 panic("proc reclaimed");

}
