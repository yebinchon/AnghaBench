
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_9__ {int ref_count; scalar_t__ type; int flags; int pg_color; int shadow_count; int shadow_head; int domain; scalar_t__ backing_object_offset; struct TYPE_9__* backing_object; int * handle; } ;


 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_COLORED ;
 int OFF_TO_IDX (scalar_t__) ;
 int VM_NFREEORDER ;
 int VM_OBJECT_RLOCK (TYPE_1__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int atop (int ) ;
 int shadow_list ;
 TYPE_1__* vm_object_allocate (scalar_t__,int ) ;

void
vm_object_shadow(
 vm_object_t *object,
 vm_ooffset_t *offset,
 vm_size_t length)
{
 vm_object_t source;
 vm_object_t result;

 source = *object;




 if (source != ((void*)0)) {
  VM_OBJECT_RLOCK(source);
  if (source->ref_count == 1 &&
      source->handle == ((void*)0) &&
      (source->type == OBJT_DEFAULT ||
       source->type == OBJT_SWAP)) {
   VM_OBJECT_RUNLOCK(source);
   return;
  }
  VM_OBJECT_RUNLOCK(source);
 }




 result = vm_object_allocate(OBJT_DEFAULT, atop(length));
 result->backing_object = source;




 result->backing_object_offset = *offset;
 if (source != ((void*)0)) {
  VM_OBJECT_WLOCK(source);
  result->domain = source->domain;
  LIST_INSERT_HEAD(&source->shadow_head, result, shadow_list);
  source->shadow_count++;





  VM_OBJECT_WUNLOCK(source);
 }





 *offset = 0;
 *object = result;
}
