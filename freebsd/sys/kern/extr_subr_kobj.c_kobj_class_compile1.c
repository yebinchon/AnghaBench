
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kobj_ops {int dummy; } ;
typedef int * kobj_ops_t ;
typedef TYPE_1__* kobj_class_t ;
struct TYPE_4__ {scalar_t__ ops; } ;


 int ENOMEM ;
 int KOBJ_ASSERT (int ) ;
 int KOBJ_LOCK () ;
 int KOBJ_UNLOCK () ;
 int MA_NOTOWNED ;
 int M_KOBJ ;
 int free (int *,int ) ;
 int kobj_class_compile_common (TYPE_1__*,int *) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static int
kobj_class_compile1(kobj_class_t cls, int mflags)
{
 kobj_ops_t ops;

 KOBJ_ASSERT(MA_NOTOWNED);

 ops = malloc(sizeof(struct kobj_ops), M_KOBJ, mflags);
 if (ops == ((void*)0))
  return (ENOMEM);






 KOBJ_LOCK();
 if (cls->ops) {
  KOBJ_UNLOCK();
  free(ops, M_KOBJ);
  return (0);
 }
 kobj_class_compile_common(cls, ops);
 KOBJ_UNLOCK();
 return (0);
}
