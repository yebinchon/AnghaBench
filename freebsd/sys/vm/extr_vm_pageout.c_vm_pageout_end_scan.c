
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_pagequeue {int pq_pdpages; int pq_pl; } ;
struct scan_state {scalar_t__ scanned; TYPE_1__* marker; struct vm_pagequeue* pq; } ;
struct TYPE_5__ {int q; } ;
struct TYPE_4__ {int aflags; } ;


 int KASSERT (int,char*) ;
 int PGA_ENQUEUED ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 TYPE_2__ plinks ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_pagequeue_assert_locked (struct vm_pagequeue*) ;

__attribute__((used)) static void
vm_pageout_end_scan(struct scan_state *ss)
{
 struct vm_pagequeue *pq;

 pq = ss->pq;
 vm_pagequeue_assert_locked(pq);
 KASSERT((ss->marker->aflags & PGA_ENQUEUED) != 0,
     ("marker %p not enqueued", ss->marker));

 TAILQ_REMOVE(&pq->pq_pl, ss->marker, plinks.q);
 vm_page_aflag_clear(ss->marker, PGA_ENQUEUED);
 pq->pq_pdpages += ss->scanned;
}
