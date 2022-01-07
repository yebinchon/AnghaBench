
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {scalar_t__ ref_count; scalar_t__ shadow_count; } ;



__attribute__((used)) static bool
is_object_active(vm_object_t obj)
{

 return (obj->ref_count > obj->shadow_count);
}
