
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_object_t ;
typedef int boolean_t ;


 int MA_NOTOWNED ;
 int * TAILQ_NEXT (int *,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int listq ;
 int vm_object_page_remove_write (int *,int,int *) ;
 int vm_page_assert_xbusied (int *) ;
 int vm_page_lock_assert (int *,int ) ;
 int * vm_page_next (int *) ;
 int * vm_page_prev (int *) ;
 scalar_t__ vm_page_tryxbusy (int *) ;
 int vm_page_xunbusy (int *) ;
 int vm_pageout_flush (int **,int,int,int,int*,int *) ;
 int vm_pageout_page_count ;

__attribute__((used)) static int
vm_object_page_collect_flush(vm_object_t object, vm_page_t p, int pagerflags,
    int flags, boolean_t *allclean, boolean_t *eio)
{
 vm_page_t ma[vm_pageout_page_count], p_first, tp;
 int count, i, mreq, runlen;

 vm_page_lock_assert(p, MA_NOTOWNED);
 vm_page_assert_xbusied(p);
 VM_OBJECT_ASSERT_WLOCKED(object);

 count = 1;
 mreq = 0;

 for (tp = p; count < vm_pageout_page_count; count++) {
  tp = vm_page_next(tp);
  if (tp == ((void*)0) || vm_page_tryxbusy(tp) == 0)
   break;
  if (!vm_object_page_remove_write(tp, flags, allclean)) {
   vm_page_xunbusy(tp);
   break;
  }
 }

 for (p_first = p; count < vm_pageout_page_count; count++) {
  tp = vm_page_prev(p_first);
  if (tp == ((void*)0) || vm_page_tryxbusy(tp) == 0)
   break;
  if (!vm_object_page_remove_write(tp, flags, allclean)) {
   vm_page_xunbusy(tp);
   break;
  }
  p_first = tp;
  mreq++;
 }

 for (tp = p_first, i = 0; i < count; tp = TAILQ_NEXT(tp, listq), i++)
  ma[i] = tp;

 vm_pageout_flush(ma, count, pagerflags, mreq, &runlen, eio);
 return (runlen);
}
