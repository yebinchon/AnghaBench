
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct vm_domain {int vmd_inacthead; } ;
struct scan_state {int * marker; TYPE_1__* pq; } ;
struct TYPE_12__ {int q; } ;
struct TYPE_11__ {scalar_t__ queue; int aflags; } ;
struct TYPE_10__ {int pq_pl; } ;


 int PGA_ENQUEUED ;
 int PGA_REQUEUE ;
 int PGA_REQUEUE_HEAD ;
 scalar_t__ PQ_INACTIVE ;
 int TAILQ_INSERT_BEFORE (int *,TYPE_2__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_7__ plinks ;
 int vm_page_aflag_clear (TYPE_2__*,int) ;
 int vm_page_aflag_set (TYPE_2__*,int) ;
 struct vm_domain* vm_pagequeue_domain (TYPE_2__*) ;

__attribute__((used)) static int
vm_pageout_reinsert_inactive_page(struct scan_state *ss, vm_page_t m)
{
 struct vm_domain *vmd;

 if (m->queue != PQ_INACTIVE || (m->aflags & PGA_ENQUEUED) != 0)
  return (0);
 vm_page_aflag_set(m, PGA_ENQUEUED);
 if ((m->aflags & PGA_REQUEUE_HEAD) != 0) {
  vmd = vm_pagequeue_domain(m);
  TAILQ_INSERT_BEFORE(&vmd->vmd_inacthead, m, plinks.q);
  vm_page_aflag_clear(m, PGA_REQUEUE | PGA_REQUEUE_HEAD);
 } else if ((m->aflags & PGA_REQUEUE) != 0) {
  TAILQ_INSERT_TAIL(&ss->pq->pq_pl, m, plinks.q);
  vm_page_aflag_clear(m, PGA_REQUEUE | PGA_REQUEUE_HEAD);
 } else
  TAILQ_INSERT_BEFORE(ss->marker, m, plinks.q);
 return (1);
}
