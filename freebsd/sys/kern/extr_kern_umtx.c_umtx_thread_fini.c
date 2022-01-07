
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_umtxq; } ;


 int umtxq_free (int ) ;

void
umtx_thread_fini(struct thread *td)
{

 umtxq_free(td->td_umtxq);
}
