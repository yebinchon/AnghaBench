
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ size; int backing_object_offset; struct TYPE_15__* backing_object; } ;
struct TYPE_14__ {scalar_t__ pindex; } ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ OFF_TO_IDX (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int listq ;
 scalar_t__ swap_pager_find_least (TYPE_2__*,scalar_t__) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 scalar_t__ vm_page_none_valid (TYPE_1__*) ;
 int vm_pager_has_page (TYPE_2__*,scalar_t__,int *,int *) ;

__attribute__((used)) static bool
vm_object_scan_all_shadowed(vm_object_t object)
{
 vm_object_t backing_object;
 vm_page_t p, pp;
 vm_pindex_t backing_offset_index, new_pindex, pi, ps;

 VM_OBJECT_ASSERT_WLOCKED(object);
 VM_OBJECT_ASSERT_WLOCKED(object->backing_object);

 backing_object = object->backing_object;

 if (backing_object->type != OBJT_DEFAULT &&
     backing_object->type != OBJT_SWAP)
  return (0);

 pi = backing_offset_index = OFF_TO_IDX(object->backing_object_offset);
 p = vm_page_find_least(backing_object, pi);
 ps = swap_pager_find_least(backing_object, pi);





 for (;; pi++) {
  if (p != ((void*)0) && p->pindex < pi)
   p = TAILQ_NEXT(p, listq);
  if (ps < pi)
   ps = swap_pager_find_least(backing_object, pi);
  if (p == ((void*)0) && ps >= backing_object->size)
   break;
  else if (p == ((void*)0))
   pi = ps;
  else
   pi = MIN(p->pindex, ps);

  new_pindex = pi - backing_offset_index;
  if (new_pindex >= object->size)
   break;
  pp = vm_page_lookup(object, new_pindex);




  if ((pp == ((void*)0) || vm_page_none_valid(pp)) &&
      !vm_pager_has_page(object, new_pindex, ((void*)0), ((void*)0)))
   return (0);
 }
 return (1);
}
