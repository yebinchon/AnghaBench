
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_umtxq; } ;
struct TYPE_2__ {struct thread* uq_thread; } ;


 TYPE_1__* umtxq_alloc () ;

void
umtx_thread_init(struct thread *td)
{

 td->td_umtxq = umtxq_alloc();
 td->td_umtxq->uq_thread = td;
}
