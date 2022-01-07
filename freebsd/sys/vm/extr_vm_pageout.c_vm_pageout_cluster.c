
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_20__ {int size; } ;
struct TYPE_19__ {int pindex; scalar_t__ dirty; TYPE_2__* object; } ;


 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VM_PAGER_PUT_NOREUSE ;
 int vm_page_assert_xbusied (TYPE_1__*) ;
 int vm_page_in_laundry (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 TYPE_1__* vm_page_next (TYPE_1__*) ;
 TYPE_1__* vm_page_prev (TYPE_1__*) ;
 int vm_page_test_dirty (TYPE_1__*) ;
 int vm_page_try_remove_write (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vm_pageout_flush (TYPE_1__**,int,int ,int ,int *,int *) ;
 int vm_pageout_page_count ;

__attribute__((used)) static int
vm_pageout_cluster(vm_page_t m)
{
 vm_object_t object;
 vm_page_t mc[2 * vm_pageout_page_count], p, pb, ps;
 vm_pindex_t pindex;
 int ib, is, page_base, pageout_count;

 object = m->object;
 VM_OBJECT_ASSERT_WLOCKED(object);
 pindex = m->pindex;

 vm_page_assert_xbusied(m);

 mc[vm_pageout_page_count] = pb = ps = m;
 pageout_count = 1;
 page_base = vm_pageout_page_count;
 ib = 1;
 is = 1;
more:
 while (ib != 0 && pageout_count < vm_pageout_page_count) {
  if (ib > pindex) {
   ib = 0;
   break;
  }
  if ((p = vm_page_prev(pb)) == ((void*)0) ||
      vm_page_tryxbusy(p) == 0) {
   ib = 0;
   break;
  }
  if (vm_page_wired(p)) {
   ib = 0;
   vm_page_xunbusy(p);
   break;
  }
  vm_page_test_dirty(p);
  if (p->dirty == 0) {
   ib = 0;
   vm_page_xunbusy(p);
   break;
  }
  vm_page_lock(p);
  if (!vm_page_in_laundry(p) || !vm_page_try_remove_write(p)) {
   vm_page_unlock(p);
   vm_page_xunbusy(p);
   ib = 0;
   break;
  }
  vm_page_unlock(p);
  mc[--page_base] = pb = p;
  ++pageout_count;
  ++ib;





  if ((pindex - (ib - 1)) % vm_pageout_page_count == 0)
   break;
 }
 while (pageout_count < vm_pageout_page_count &&
     pindex + is < object->size) {
  if ((p = vm_page_next(ps)) == ((void*)0) ||
      vm_page_tryxbusy(p) == 0)
   break;
  if (vm_page_wired(p)) {
   vm_page_xunbusy(p);
   break;
  }
  vm_page_test_dirty(p);
  if (p->dirty == 0) {
   vm_page_xunbusy(p);
   break;
  }
  vm_page_lock(p);
  if (!vm_page_in_laundry(p) || !vm_page_try_remove_write(p)) {
   vm_page_unlock(p);
   vm_page_xunbusy(p);
   break;
  }
  vm_page_unlock(p);
  mc[page_base + pageout_count] = ps = p;
  ++pageout_count;
  ++is;
 }






 if (ib != 0 && pageout_count < vm_pageout_page_count)
  goto more;

 return (vm_pageout_flush(&mc[page_base], pageout_count,
     VM_PAGER_PUT_NOREUSE, 0, ((void*)0), ((void*)0)));
}
