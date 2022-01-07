
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct kqueue {int kq_task; int kq_lock; TYPE_1__ kq_sel; int kq_head; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct kqueue*) ;
 int knlist_init_mtx (int *,int *) ;
 int kqueue_task ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static void
kqueue_init(struct kqueue *kq)
{

 mtx_init(&kq->kq_lock, "kqueue", ((void*)0), MTX_DEF | MTX_DUPOK);
 TAILQ_INIT(&kq->kq_head);
 knlist_init_mtx(&kq->kq_sel.si_note, &kq->kq_lock);
 TASK_INIT(&kq->kq_task, 0, kqueue_task, kq);
}
