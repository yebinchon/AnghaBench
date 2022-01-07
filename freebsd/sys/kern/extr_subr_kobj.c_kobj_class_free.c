
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* kobj_class_t ;
struct TYPE_3__ {scalar_t__ refs; int * ops; } ;


 int KOBJ_ASSERT (int ) ;
 int KOBJ_LOCK () ;
 int KOBJ_UNLOCK () ;
 int MA_NOTOWNED ;
 int M_KOBJ ;
 int free (void*,int ) ;

void
kobj_class_free(kobj_class_t cls)
{
 void* ops = ((void*)0);

 KOBJ_ASSERT(MA_NOTOWNED);
 KOBJ_LOCK();





 if (cls->refs == 0) {
  ops = cls->ops;
  cls->ops = ((void*)0);
 }

 KOBJ_UNLOCK();

 if (ops)
  free(ops, M_KOBJ);
}
