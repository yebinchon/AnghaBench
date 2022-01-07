
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_memattr_t ;
struct TYPE_5__ {int type; int memattr; int memq; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TAILQ_EMPTY (int *) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int panic (char*,TYPE_1__*) ;

int
vm_object_set_memattr(vm_object_t object, vm_memattr_t memattr)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 switch (object->type) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (!TAILQ_EMPTY(&object->memq))
   return (KERN_FAILURE);
  break;
 case 135:
  return (KERN_INVALID_ARGUMENT);
 default:
  panic("vm_object_set_memattr: object %p is of undefined type",
      object);
 }
 object->memattr = memattr;
 return (KERN_SUCCESS);
}
