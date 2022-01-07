
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* kobjop_desc_t ;
typedef int kobj_method_t ;
typedef int kobj_class_t ;
struct TYPE_4__ {int deflt; } ;


 int * kobj_lookup_method_mi (int ,TYPE_1__*) ;

kobj_method_t*
kobj_lookup_method(kobj_class_t cls,
     kobj_method_t **cep,
     kobjop_desc_t desc)
{
 kobj_method_t *ce;

 ce = kobj_lookup_method_mi(cls, desc);
 if (!ce)
  ce = &desc->deflt;
 if (cep)
  *cep = ce;
 return ce;
}
