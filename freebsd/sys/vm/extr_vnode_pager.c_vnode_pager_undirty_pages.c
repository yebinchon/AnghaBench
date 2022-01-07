
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
typedef int off_t ;
struct TYPE_5__ {scalar_t__ dirty; int object; } ;


 int DEV_BSIZE ;
 int OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGER_AGAIN ;
 int VM_PAGER_BAD ;
 int VM_PAGER_OK ;
 int round_page (int) ;
 int roundup2 (int,int ) ;
 int trunc_page (int) ;
 int vm_page_clear_dirty (TYPE_1__*,int,int) ;
 int vm_page_undirty (TYPE_1__*) ;

void
vnode_pager_undirty_pages(vm_page_t *ma, int *rtvals, int written, off_t eof,
    int lpos)
{
 vm_object_t obj;
 int i, pos, pos_devb;

 if (written == 0 && eof >= lpos)
  return;
 obj = ma[0]->object;
 VM_OBJECT_WLOCK(obj);
 for (i = 0, pos = 0; pos < written; i++, pos += PAGE_SIZE) {
  if (pos < trunc_page(written)) {
   rtvals[i] = VM_PAGER_OK;
   vm_page_undirty(ma[i]);
  } else {

   rtvals[i] = VM_PAGER_AGAIN;
   vm_page_clear_dirty(ma[i], 0, written & PAGE_MASK);
  }
 }
 if (eof >= lpos)
  goto done;
 for (pos = eof, i = OFF_TO_IDX(trunc_page(pos)); pos < lpos; i++) {
  if (pos != trunc_page(pos)) {






   pos_devb = roundup2(pos & PAGE_MASK, DEV_BSIZE);
   vm_page_clear_dirty(ma[i], pos_devb, PAGE_SIZE -
       pos_devb);







   if (ma[i]->dirty == 0)
    rtvals[i] = VM_PAGER_OK;

   pos = round_page(pos);
  } else {

   rtvals[i] = VM_PAGER_BAD;
   pos += PAGE_SIZE;
  }
 }
done:
 VM_OBJECT_WUNLOCK(obj);
}
