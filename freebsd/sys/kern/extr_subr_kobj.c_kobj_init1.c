
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kobj_t ;
typedef TYPE_1__* kobj_class_t ;
struct TYPE_5__ {int * ops; } ;


 int KOBJ_LOCK () ;
 int KOBJ_UNLOCK () ;
 int kobj_class_compile1 (TYPE_1__*,int) ;
 int kobj_init_common (int ,TYPE_1__*) ;

__attribute__((used)) static int
kobj_init1(kobj_t obj, kobj_class_t cls, int mflags)
{
 int error;

 KOBJ_LOCK();
 while (cls->ops == ((void*)0)) {





  KOBJ_UNLOCK();
  error = kobj_class_compile1(cls, mflags);
  if (error != 0)
   return (error);
  KOBJ_LOCK();
 }
 kobj_init_common(obj, cls);
 KOBJ_UNLOCK();
 return (0);
}
