
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int flags; scalar_t__ type; } ;


 int MADV_FREE ;
 scalar_t__ OBJT_DEFAULT ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_ONEMAPPING ;
 int OBJ_UNMANAGED ;

__attribute__((used)) static bool
vm_object_advice_applies(vm_object_t object, int advice)
{

 if ((object->flags & OBJ_UNMANAGED) != 0)
  return (0);
 if (advice != MADV_FREE)
  return (1);
 return ((object->type == OBJT_DEFAULT || object->type == OBJT_SWAP) &&
     (object->flags & OBJ_ONEMAPPING) != 0);
}
