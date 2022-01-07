
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef int boolean_t ;
struct TYPE_21__ {int type; } ;
struct TYPE_20__ {int aflags; TYPE_2__* object; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int OBJT_SWAP ;
 int PGA_WRITEABLE ;
 int TRUE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;






 int pmap_page_is_write_mapped (TYPE_1__*) ;
 int vm_object_pip_add (TYPE_2__*,int) ;
 int vm_object_pip_wakeup (TYPE_2__*) ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_all_valid (TYPE_1__*) ;
 int vm_page_busy_downgrade (TYPE_1__*) ;
 int vm_page_deactivate_noreuse (TYPE_1__*) ;
 int vm_page_in_laundry (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_sunbusy (TYPE_1__*) ;
 int vm_page_undirty (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_page_unswappable (TYPE_1__*) ;
 int vm_pager_put_pages (TYPE_2__*,TYPE_1__**,int,int,int*) ;

int
vm_pageout_flush(vm_page_t *mc, int count, int flags, int mreq, int *prunlen,
    boolean_t *eio)
{
 vm_object_t object = mc[0]->object;
 int pageout_status[count];
 int numpagedout = 0;
 int i, runlen;

 VM_OBJECT_ASSERT_WLOCKED(object);
 for (i = 0; i < count; i++) {
  KASSERT(vm_page_all_valid(mc[i]),
      ("vm_pageout_flush: partially invalid page %p index %d/%d",
   mc[i], i, count));
  KASSERT((mc[i]->aflags & PGA_WRITEABLE) == 0,
      ("vm_pageout_flush: writeable page %p", mc[i]));
  vm_page_busy_downgrade(mc[i]);
 }
 vm_object_pip_add(object, count);

 vm_pager_put_pages(object, mc, count, flags, pageout_status);

 runlen = count - mreq;
 if (eio != ((void*)0))
  *eio = FALSE;
 for (i = 0; i < count; i++) {
  vm_page_t mt = mc[i];

  KASSERT(pageout_status[i] == 128 ||
      !pmap_page_is_write_mapped(mt),
      ("vm_pageout_flush: page %p is not write protected", mt));
  switch (pageout_status[i]) {
  case 129:
   vm_page_lock(mt);
   if (vm_page_in_laundry(mt))
    vm_page_deactivate_noreuse(mt);
   vm_page_unlock(mt);

  case 128:
   numpagedout++;
   break;
  case 132:






   vm_page_undirty(mt);
   vm_page_lock(mt);
   if (vm_page_in_laundry(mt))
    vm_page_deactivate_noreuse(mt);
   vm_page_unlock(mt);
   break;
  case 131:
  case 130:
   vm_page_lock(mt);
   if (object->type == OBJT_SWAP &&
       pageout_status[i] == 130) {
    vm_page_unswappable(mt);
    numpagedout++;
   } else
    vm_page_activate(mt);
   vm_page_unlock(mt);
   if (eio != ((void*)0) && i >= mreq && i - mreq < runlen)
    *eio = TRUE;
   break;
  case 133:
   if (i >= mreq && i - mreq < runlen)
    runlen = i - mreq;
   break;
  }







  if (pageout_status[i] != 128) {
   vm_object_pip_wakeup(object);
   vm_page_sunbusy(mt);
  }
 }
 if (prunlen != ((void*)0))
  *prunlen = runlen;
 return (numpagedout);
}
