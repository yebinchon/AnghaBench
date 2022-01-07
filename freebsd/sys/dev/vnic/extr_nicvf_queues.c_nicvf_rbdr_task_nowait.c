
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbdr {int rbdr_task; } ;


 int M_NOWAIT ;
 int nicvf_refill_rbdr (struct rbdr*,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
nicvf_rbdr_task_nowait(void *arg, int pending)
{
 struct rbdr *rbdr;
 int err;

 rbdr = (struct rbdr *)arg;

 err = nicvf_refill_rbdr(rbdr, M_NOWAIT);
 if (err != 0) {




  taskqueue_enqueue(taskqueue_thread, &rbdr->rbdr_task);
 }
}
