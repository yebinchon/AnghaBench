
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct vm_pagequeue {scalar_t__ pq_cnt; } ;
struct vm_domain {scalar_t__ vmd_laundry_request; int vmd_clean_pages_freed; struct vm_pagequeue* vmd_pagequeues; TYPE_1__* vmd_markers; int vmd_pageout_deficit; } ;
struct vm_batchqueue {int dummy; } ;
struct scan_state {struct vm_batchqueue bq; } ;
struct mtx {int dummy; } ;
struct TYPE_27__ {scalar_t__ ref_count; int flags; } ;
struct TYPE_26__ {int flags; int aflags; scalar_t__ dirty; int queue; int act_count; TYPE_2__* object; } ;


 scalar_t__ ACT_ADVANCE ;
 int KASSERT (int,char*) ;
 int OBJ_DEAD ;
 int PGA_ENQUEUED ;
 int PGA_QUEUE_STATE_MASK ;
 int PGA_REFERENCED ;
 int PGA_REQUEUE ;
 int PGA_REQUEUE_HEAD ;
 int PG_MARKER ;
 size_t PQ_INACTIVE ;
 size_t PQ_LAUNDRY ;
 int PQ_NONE ;
 int VM_CNT_ADD (int ,int) ;
 int VM_CNT_INC (int ) ;
 scalar_t__ VM_LAUNDRY_BACKGROUND ;
 scalar_t__ VM_LAUNDRY_IDLE ;
 scalar_t__ VM_LAUNDRY_SHORTFALL ;
 int VM_OBJECT_TRYWLOCK (TYPE_2__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ atomic_load_acq_int (int *) ;
 scalar_t__ atomic_load_ptr (TYPE_2__**) ;
 int atomic_readandclear_int (int *) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int pmap_ts_referenced (TYPE_1__*) ;
 int swapdev_enabled ;
 int v_dfree ;
 int v_pdshortfalls ;
 int v_reactivated ;
 int vm_batchqueue_init (struct vm_batchqueue*) ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_aflag_set (TYPE_1__*,int) ;
 int vm_page_change_lock (TYPE_1__*,struct mtx**) ;
 int vm_page_dequeue_deferred (TYPE_1__*) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_launder (TYPE_1__*) ;
 scalar_t__ vm_page_none_valid (TYPE_1__*) ;
 size_t vm_page_queue (TYPE_1__*) ;
 int vm_page_test_dirty (TYPE_1__*) ;
 int vm_page_try_remove_all (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vm_pageout_end_scan (struct scan_state*) ;
 int vm_pageout_init_scan (struct scan_state*,struct vm_pagequeue*,TYPE_1__*,int *,scalar_t__) ;
 int vm_pageout_mightbe_oom (struct vm_domain*,int,int) ;
 TYPE_1__* vm_pageout_next (struct scan_state*,int) ;
 int vm_pageout_reinsert_inactive (struct scan_state*,struct vm_batchqueue*,TYPE_1__*) ;
 int vm_pagequeue_lock (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;
 int vm_swapout_run () ;
 int vm_swapout_run_idle () ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static int
vm_pageout_scan_inactive(struct vm_domain *vmd, int shortage,
    int *addl_shortage)
{
 struct scan_state ss;
 struct vm_batchqueue rq;
 struct mtx *mtx;
 vm_page_t m, marker;
 struct vm_pagequeue *pq;
 vm_object_t object;
 int act_delta, addl_page_shortage, deficit, page_shortage;
 int starting_page_shortage;







 addl_page_shortage = 0;







 deficit = atomic_readandclear_int(&vmd->vmd_pageout_deficit);
 starting_page_shortage = page_shortage = shortage + deficit;

 mtx = ((void*)0);
 object = ((void*)0);
 vm_batchqueue_init(&rq);







 marker = &vmd->vmd_markers[PQ_INACTIVE];
 pq = &vmd->vmd_pagequeues[PQ_INACTIVE];
 vm_pagequeue_lock(pq);
 vm_pageout_init_scan(&ss, pq, marker, ((void*)0), pq->pq_cnt);
 while (page_shortage > 0 && (m = vm_pageout_next(&ss, 1)) != ((void*)0)) {
  KASSERT((m->flags & PG_MARKER) == 0,
      ("marker page %p was dequeued", m));

  vm_page_change_lock(m, &mtx);

recheck:






  if (vm_page_queue(m) != PQ_INACTIVE) {
   addl_page_shortage++;
   continue;
  }






  if ((m->aflags & (PGA_ENQUEUED | PGA_REQUEUE |
      PGA_REQUEUE_HEAD)) != 0)
   goto reinsert;
  if (vm_page_wired(m)) {
   vm_page_dequeue_deferred(m);
   continue;
  }

  if (object != m->object) {
   if (object != ((void*)0))
    VM_OBJECT_WUNLOCK(object);





   object = (vm_object_t)atomic_load_ptr(&m->object);
   if (object != ((void*)0) && !VM_OBJECT_TRYWLOCK(object)) {
    mtx_unlock(mtx);

    VM_OBJECT_WLOCK(object);
    mtx_lock(mtx);
    goto recheck;
   }
  }
  if (__predict_false(m->object == ((void*)0)))



   continue;
  KASSERT(m->object == object, ("page %p does not belong to %p",
      m, object));

  if (vm_page_tryxbusy(m) == 0) {
   addl_page_shortage++;
   goto reinsert;
  }
  if (__predict_false(vm_page_wired(m))) {
   vm_page_xunbusy(m);
   vm_page_dequeue_deferred(m);
   continue;
  }





  if (vm_page_none_valid(m))
   goto free_page;
  if (object->ref_count != 0)
   act_delta = pmap_ts_referenced(m);
  else {
   KASSERT(!pmap_page_is_mapped(m),
       ("page %p is mapped", m));
   act_delta = 0;
  }
  if ((m->aflags & PGA_REFERENCED) != 0) {
   vm_page_aflag_clear(m, PGA_REFERENCED);
   act_delta++;
  }
  if (act_delta != 0) {
   if (object->ref_count != 0) {
    vm_page_xunbusy(m);
    VM_CNT_INC(v_reactivated);
    vm_page_activate(m);
    m->act_count += act_delta + ACT_ADVANCE;
    continue;
   } else if ((object->flags & OBJ_DEAD) == 0) {
    vm_page_xunbusy(m);
    vm_page_aflag_set(m, PGA_REQUEUE);
    goto reinsert;
   }
  }
  if (object->ref_count != 0) {
   vm_page_test_dirty(m);
   if (m->dirty == 0 && !vm_page_try_remove_all(m)) {
    vm_page_xunbusy(m);
    vm_page_dequeue_deferred(m);
    continue;
   }
  }
  if (m->dirty == 0) {
free_page:






   KASSERT((m->aflags & PGA_QUEUE_STATE_MASK) == 0,
       ("page %p has queue state", m));
   m->queue = PQ_NONE;
   vm_page_free(m);
   page_shortage--;
   continue;
  }
  vm_page_xunbusy(m);
  if ((object->flags & OBJ_DEAD) == 0)
   vm_page_launder(m);
  continue;
reinsert:
  vm_pageout_reinsert_inactive(&ss, &rq, m);
 }
 if (mtx != ((void*)0))
  mtx_unlock(mtx);
 if (object != ((void*)0))
  VM_OBJECT_WUNLOCK(object);
 vm_pageout_reinsert_inactive(&ss, &rq, ((void*)0));
 vm_pageout_reinsert_inactive(&ss, &ss.bq, ((void*)0));
 vm_pagequeue_lock(pq);
 vm_pageout_end_scan(&ss);
 vm_pagequeue_unlock(pq);

 VM_CNT_ADD(v_dfree, starting_page_shortage - page_shortage);
 if (starting_page_shortage > 0) {
  pq = &vmd->vmd_pagequeues[PQ_LAUNDRY];
  vm_pagequeue_lock(pq);
  if (vmd->vmd_laundry_request == VM_LAUNDRY_IDLE &&
      (pq->pq_cnt > 0 || atomic_load_acq_int(&swapdev_enabled))) {
   if (page_shortage > 0) {
    vmd->vmd_laundry_request = VM_LAUNDRY_SHORTFALL;
    VM_CNT_INC(v_pdshortfalls);
   } else if (vmd->vmd_laundry_request !=
       VM_LAUNDRY_SHORTFALL)
    vmd->vmd_laundry_request =
        VM_LAUNDRY_BACKGROUND;
   wakeup(&vmd->vmd_laundry_request);
  }
  vmd->vmd_clean_pages_freed +=
      starting_page_shortage - page_shortage;
  vm_pagequeue_unlock(pq);
 }





 if (page_shortage > 0)
  vm_swapout_run();





 vm_pageout_mightbe_oom(vmd, page_shortage, starting_page_shortage);




 vm_swapout_run_idle();




 *addl_shortage = addl_page_shortage + deficit;

 return (page_shortage <= 0);
}
