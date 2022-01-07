
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct vm_pagequeue {long pq_cnt; int pq_pl; } ;
struct vm_domain {int vmd_last_active_scan; TYPE_1__* vmd_clock; struct vm_pagequeue* vmd_pagequeues; TYPE_1__* vmd_markers; } ;
struct scan_state {scalar_t__ scanned; } ;
struct mtx {int dummy; } ;
struct TYPE_21__ {scalar_t__ ref_count; } ;
struct TYPE_20__ {int flags; int aflags; scalar_t__ act_count; scalar_t__ dirty; int object; } ;
struct TYPE_19__ {int q; } ;


 scalar_t__ ACT_ADVANCE ;
 int ACT_DECLINE ;
 scalar_t__ ACT_MAX ;
 int PGA_REFERENCED ;
 int PG_MARKER ;
 size_t PQ_ACTIVE ;
 int PQ_INACTIVE ;
 int PQ_LAUNDRY ;
 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ act_scan_laundry_weight ;
 scalar_t__ atomic_load_ptr (int *) ;
 long hz ;
 scalar_t__ min (scalar_t__,int ) ;
 int mtx_unlock (struct mtx*) ;
 TYPE_13__ plinks ;
 int pmap_ts_referenced (TYPE_1__*) ;
 int ticks ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_change_lock (TYPE_1__*,struct mtx**) ;
 int vm_page_dequeue_deferred (TYPE_1__*) ;
 size_t vm_page_queue (TYPE_1__*) ;
 int vm_page_swapqueue (TYPE_1__*,size_t,int ) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;
 int vm_pageout_end_scan (struct scan_state*) ;
 int vm_pageout_init_scan (struct scan_state*,struct vm_pagequeue*,TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* vm_pageout_next (struct scan_state*,int) ;
 long vm_pageout_update_period ;
 int vm_pagequeue_lock (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;

__attribute__((used)) static void
vm_pageout_scan_active(struct vm_domain *vmd, int page_shortage)
{
 struct scan_state ss;
 struct mtx *mtx;
 vm_object_t object;
 vm_page_t m, marker;
 struct vm_pagequeue *pq;
 long min_scan;
 int act_delta, max_scan, scan_tick;

 marker = &vmd->vmd_markers[PQ_ACTIVE];
 pq = &vmd->vmd_pagequeues[PQ_ACTIVE];
 vm_pagequeue_lock(pq);





 scan_tick = ticks;
 if (vm_pageout_update_period != 0) {
  min_scan = pq->pq_cnt;
  min_scan *= scan_tick - vmd->vmd_last_active_scan;
  min_scan /= hz * vm_pageout_update_period;
 } else
  min_scan = 0;
 if (min_scan > 0 || (page_shortage > 0 && pq->pq_cnt > 0))
  vmd->vmd_last_active_scan = scan_tick;
 max_scan = page_shortage > 0 ? pq->pq_cnt : min_scan;
 mtx = ((void*)0);
act_scan:
 vm_pageout_init_scan(&ss, pq, marker, &vmd->vmd_clock[0], max_scan);
 while ((m = vm_pageout_next(&ss, 0)) != ((void*)0)) {
  if (__predict_false(m == &vmd->vmd_clock[1])) {
   vm_pagequeue_lock(pq);
   TAILQ_REMOVE(&pq->pq_pl, &vmd->vmd_clock[0], plinks.q);
   TAILQ_REMOVE(&pq->pq_pl, &vmd->vmd_clock[1], plinks.q);
   TAILQ_INSERT_HEAD(&pq->pq_pl, &vmd->vmd_clock[0],
       plinks.q);
   TAILQ_INSERT_TAIL(&pq->pq_pl, &vmd->vmd_clock[1],
       plinks.q);
   max_scan -= ss.scanned;
   vm_pageout_end_scan(&ss);
   goto act_scan;
  }
  if (__predict_false((m->flags & PG_MARKER) != 0))
   continue;

  vm_page_change_lock(m, &mtx);







  if (vm_page_queue(m) != PQ_ACTIVE)
   continue;




  if (vm_page_wired(m)) {
   vm_page_dequeue_deferred(m);
   continue;
  }





  object = (vm_object_t)atomic_load_ptr(&m->object);
  if (__predict_false(object == ((void*)0)))



   continue;
  if (object->ref_count != 0)
   act_delta = pmap_ts_referenced(m);
  else
   act_delta = 0;
  if ((m->aflags & PGA_REFERENCED) != 0) {
   vm_page_aflag_clear(m, PGA_REFERENCED);
   act_delta++;
  }




  if (act_delta != 0) {
   m->act_count += ACT_ADVANCE + act_delta;
   if (m->act_count > ACT_MAX)
    m->act_count = ACT_MAX;
  } else
   m->act_count -= min(m->act_count, ACT_DECLINE);

  if (m->act_count == 0) {
   if (page_shortage <= 0) {
    vm_page_swapqueue(m, PQ_ACTIVE, PQ_INACTIVE);
   } else {
    if (m->dirty == 0) {
     vm_page_swapqueue(m, PQ_ACTIVE,
         PQ_INACTIVE);
     page_shortage -=
         act_scan_laundry_weight;
    } else {
     vm_page_swapqueue(m, PQ_ACTIVE,
         PQ_LAUNDRY);
     page_shortage--;
    }
   }
  }
 }
 if (mtx != ((void*)0)) {
  mtx_unlock(mtx);
  mtx = ((void*)0);
 }
 vm_pagequeue_lock(pq);
 TAILQ_REMOVE(&pq->pq_pl, &vmd->vmd_clock[0], plinks.q);
 TAILQ_INSERT_AFTER(&pq->pq_pl, marker, &vmd->vmd_clock[0], plinks.q);
 vm_pageout_end_scan(&ss);
 vm_pagequeue_unlock(pq);
}
