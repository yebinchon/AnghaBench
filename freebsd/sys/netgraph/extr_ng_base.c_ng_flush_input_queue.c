
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ng_queue {int q_flags; int queue; } ;
typedef TYPE_2__* node_p ;
typedef TYPE_3__* item_p ;
struct TYPE_9__ {int depth; TYPE_1__* apply; } ;
struct TYPE_8__ {struct ng_queue nd_input_queue; } ;
struct TYPE_7__ {int error; int context; int (* apply ) (int ,int ) ;int refs; } ;


 int ENOENT ;
 int NG_FREE_ITEM (TYPE_3__*) ;
 int NG_QUEUE_LOCK (struct ng_queue*) ;
 int NG_QUEUE_UNLOCK (struct ng_queue*) ;
 int OP_PENDING ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 TYPE_3__* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int atomic_clear_int (int *,int ) ;
 int el_next ;
 scalar_t__ refcount_release (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
ng_flush_input_queue(node_p node)
{
 struct ng_queue *ngq = &node->nd_input_queue;
 item_p item;

 NG_QUEUE_LOCK(ngq);
 while ((item = STAILQ_FIRST(&ngq->queue)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&ngq->queue, el_next);
  if (STAILQ_EMPTY(&ngq->queue))
   atomic_clear_int(&ngq->q_flags, OP_PENDING);
  NG_QUEUE_UNLOCK(ngq);


  if (item->apply != ((void*)0)) {
   if (item->depth == 1)
    item->apply->error = ENOENT;
   if (refcount_release(&item->apply->refs)) {
    (*item->apply->apply)(item->apply->context,
        item->apply->error);
   }
  }
  NG_FREE_ITEM(item);
  NG_QUEUE_LOCK(ngq);
 }
 NG_QUEUE_UNLOCK(ngq);
}
