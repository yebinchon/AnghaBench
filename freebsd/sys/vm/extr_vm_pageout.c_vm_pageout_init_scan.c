
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct vm_pagequeue {int pq_pl; } ;
struct scan_state {int maxscan; scalar_t__ scanned; TYPE_1__* marker; struct vm_pagequeue* pq; int bq; } ;
struct TYPE_10__ {int q; } ;
struct TYPE_9__ {int aflags; } ;


 int KASSERT (int,char*) ;
 int PGA_ENQUEUED ;
 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 TYPE_5__ plinks ;
 int vm_batchqueue_init (int *) ;
 int vm_page_aflag_set (TYPE_1__*,int) ;
 int vm_pagequeue_assert_locked (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;

__attribute__((used)) static void
vm_pageout_init_scan(struct scan_state *ss, struct vm_pagequeue *pq,
    vm_page_t marker, vm_page_t after, int maxscan)
{

 vm_pagequeue_assert_locked(pq);
 KASSERT((marker->aflags & PGA_ENQUEUED) == 0,
     ("marker %p already enqueued", marker));

 if (after == ((void*)0))
  TAILQ_INSERT_HEAD(&pq->pq_pl, marker, plinks.q);
 else
  TAILQ_INSERT_AFTER(&pq->pq_pl, after, marker, plinks.q);
 vm_page_aflag_set(marker, PGA_ENQUEUED);

 vm_batchqueue_init(&ss->bq);
 ss->pq = pq;
 ss->marker = marker;
 ss->maxscan = maxscan;
 ss->scanned = 0;
 vm_pagequeue_unlock(pq);
}
