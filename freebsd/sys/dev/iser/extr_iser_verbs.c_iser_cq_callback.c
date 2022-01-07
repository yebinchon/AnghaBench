
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_comp {int task; int tq; } ;
struct ib_cq {int dummy; } ;


 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
iser_cq_callback(struct ib_cq *cq, void *cq_context)
{
 struct iser_comp *comp = cq_context;

 taskqueue_enqueue(comp->tq, &comp->task);
}
