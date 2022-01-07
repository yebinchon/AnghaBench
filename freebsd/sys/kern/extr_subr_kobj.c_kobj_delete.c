
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct malloc_type {int dummy; } ;
typedef TYPE_2__* kobj_t ;
typedef TYPE_3__* kobj_class_t ;
struct TYPE_9__ {int refs; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* cls; } ;


 int KOBJ_ASSERT (int ) ;
 int KOBJ_LOCK () ;
 int KOBJ_UNLOCK () ;
 int MA_NOTOWNED ;
 int free (TYPE_2__*,struct malloc_type*) ;
 int kobj_class_free (TYPE_3__*) ;

void
kobj_delete(kobj_t obj, struct malloc_type *mtype)
{
 kobj_class_t cls = obj->ops->cls;
 int refs;






 KOBJ_ASSERT(MA_NOTOWNED);
 KOBJ_LOCK();
 cls->refs--;
 refs = cls->refs;
 KOBJ_UNLOCK();

 if (!refs)
  kobj_class_free(cls);

 obj->ops = ((void*)0);
 if (mtype)
  free(obj, mtype);
}
