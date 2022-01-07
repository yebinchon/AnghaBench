
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct vm_pagequeue {int pq_cnt; } ;
struct vm_domain {struct vm_pagequeue* vmd_pagequeues; TYPE_1__* vmd_markers; } ;
struct scan_state {int scanned; } ;
struct mtx {int dummy; } ;
struct TYPE_27__ {scalar_t__ ref_count; int flags; scalar_t__ type; } ;
struct TYPE_26__ {int flags; int aflags; scalar_t__ dirty; int act_count; TYPE_2__* object; } ;


 scalar_t__ ACT_ADVANCE ;
 int EDEADLK ;
 int KASSERT (int,char*) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_DEAD ;
 int PGA_REFERENCED ;
 int PGA_REQUEUE ;
 int PG_MARKER ;
 int PQ_LAUNDRY ;
 int PQ_UNSWAPPABLE ;
 int VM_CNT_INC (int ) ;
 int VM_OBJECT_TRYWLOCK (TYPE_2__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ atomic_load_acq_int (int *) ;
 scalar_t__ atomic_load_ptr (TYPE_2__**) ;
 scalar_t__ disable_swap_pageouts ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int pageout_lock_miss ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int pmap_ts_referenced (TYPE_1__*) ;
 int speedup_syncer () ;
 int swapdev_enabled ;
 int v_dfree ;
 int v_reactivated ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_change_lock (TYPE_1__*,struct mtx**) ;
 int vm_page_dequeue_deferred (TYPE_1__*) ;
 int vm_page_free (TYPE_1__*) ;
 scalar_t__ vm_page_none_valid (TYPE_1__*) ;
 int vm_page_pqbatch_submit (TYPE_1__*,int) ;
 int vm_page_queue (TYPE_1__*) ;
 int vm_page_requeue (TYPE_1__*) ;
 int vm_page_test_dirty (TYPE_1__*) ;
 int vm_page_try_remove_all (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vm_pageout_clean (TYPE_1__*,int*) ;
 int vm_pageout_end_scan (struct scan_state*) ;
 int vm_pageout_init_scan (struct scan_state*,struct vm_pagequeue*,TYPE_1__*,int *,int ) ;
 TYPE_1__* vm_pageout_next (struct scan_state*,int) ;
 int vm_pagequeue_lock (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;

__attribute__((used)) static int
vm_pageout_launder(struct vm_domain *vmd, int launder, bool in_shortfall)
{
 struct scan_state ss;
 struct vm_pagequeue *pq;
 struct mtx *mtx;
 vm_object_t object;
 vm_page_t m, marker;
 int act_delta, error, numpagedout, queue, starting_target;
 int vnodes_skipped;
 bool pageout_ok;

 mtx = ((void*)0);
 object = ((void*)0);
 starting_target = launder;
 vnodes_skipped = 0;
 if (atomic_load_acq_int(&swapdev_enabled))
  queue = PQ_UNSWAPPABLE;
 else
  queue = PQ_LAUNDRY;

scan:
 marker = &vmd->vmd_markers[queue];
 pq = &vmd->vmd_pagequeues[queue];
 vm_pagequeue_lock(pq);
 vm_pageout_init_scan(&ss, pq, marker, ((void*)0), pq->pq_cnt);
 while (launder > 0 && (m = vm_pageout_next(&ss, 0)) != ((void*)0)) {
  if (__predict_false((m->flags & PG_MARKER) != 0))
   continue;

  vm_page_change_lock(m, &mtx);

recheck:






  if (vm_page_queue(m) != queue)
   continue;





  if ((m->aflags & PGA_REQUEUE) != 0) {
   vm_page_pqbatch_submit(m, queue);
   continue;
  }
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

  if (vm_page_tryxbusy(m) == 0)
   continue;
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
    if (!in_shortfall)
     launder--;
    continue;
   } else if ((object->flags & OBJ_DEAD) == 0) {
    vm_page_xunbusy(m);
    vm_page_requeue(m);
    continue;
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
   vm_page_free(m);
   VM_CNT_INC(v_dfree);
  } else if ((object->flags & OBJ_DEAD) == 0) {
   if (object->type != OBJT_SWAP &&
       object->type != OBJT_DEFAULT)
    pageout_ok = 1;
   else if (disable_swap_pageouts)
    pageout_ok = 0;
   else
    pageout_ok = 1;
   if (!pageout_ok) {
    vm_page_xunbusy(m);
    vm_page_requeue(m);
    continue;
   }
   error = vm_pageout_clean(m, &numpagedout);
   if (error == 0) {
    launder -= numpagedout;
    ss.scanned += numpagedout;
   } else if (error == EDEADLK) {
    pageout_lock_miss++;
    vnodes_skipped++;
   }
   mtx = ((void*)0);
   object = ((void*)0);
  } else
   vm_page_xunbusy(m);
 }
 if (mtx != ((void*)0)) {
  mtx_unlock(mtx);
  mtx = ((void*)0);
 }
 if (object != ((void*)0)) {
  VM_OBJECT_WUNLOCK(object);
  object = ((void*)0);
 }
 vm_pagequeue_lock(pq);
 vm_pageout_end_scan(&ss);
 vm_pagequeue_unlock(pq);

 if (launder > 0 && queue == PQ_UNSWAPPABLE) {
  queue = PQ_LAUNDRY;
  goto scan;
 }





 if (vnodes_skipped > 0 && launder > 0)
  (void)speedup_syncer();

 return (starting_target - launder);
}
