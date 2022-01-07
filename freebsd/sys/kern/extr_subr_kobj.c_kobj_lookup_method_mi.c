
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kobjop_desc_t ;
typedef int kobj_method_t ;
typedef TYPE_1__* kobj_class_t ;
struct TYPE_4__ {struct TYPE_4__** baseclasses; } ;


 int * kobj_lookup_method_class (TYPE_1__*,int ) ;

__attribute__((used)) static kobj_method_t*
kobj_lookup_method_mi(kobj_class_t cls,
        kobjop_desc_t desc)
{
 kobj_method_t *ce;
 kobj_class_t *basep;

 ce = kobj_lookup_method_class(cls, desc);
 if (ce)
  return ce;

 basep = cls->baseclasses;
 if (basep) {
  for (; *basep; basep++) {
   ce = kobj_lookup_method_mi(*basep, desc);
   if (ce)
    return ce;
  }
 }

 return ((void*)0);
}
