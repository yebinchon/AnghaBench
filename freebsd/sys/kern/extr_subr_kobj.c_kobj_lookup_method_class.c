
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ kobjop_desc_t ;
struct TYPE_5__ {scalar_t__ desc; } ;
typedef TYPE_1__ kobj_method_t ;
typedef TYPE_2__* kobj_class_t ;
struct TYPE_6__ {TYPE_1__* methods; } ;



__attribute__((used)) static kobj_method_t*
kobj_lookup_method_class(kobj_class_t cls, kobjop_desc_t desc)
{
 kobj_method_t *methods = cls->methods;
 kobj_method_t *ce;

 for (ce = methods; ce && ce->desc; ce++) {
  if (ce->desc == desc) {
   return ce;
  }
 }

 return ((void*)0);
}
