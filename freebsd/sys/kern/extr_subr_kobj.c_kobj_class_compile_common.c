
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* kobj_ops_t ;
struct TYPE_9__ {TYPE_1__* desc; } ;
typedef TYPE_3__ kobj_method_t ;
typedef TYPE_4__* kobj_class_t ;
struct TYPE_10__ {TYPE_2__* ops; TYPE_3__* methods; } ;
struct TYPE_8__ {TYPE_4__* cls; int ** cache; } ;
struct TYPE_7__ {scalar_t__ id; } ;


 int KOBJ_CACHE_SIZE ;
 int kobj_next_id ;
 int null_method ;

__attribute__((used)) static void
kobj_class_compile_common(kobj_class_t cls, kobj_ops_t ops)
{
 kobj_method_t *m;
 int i;




 if (cls->ops)
  return;




 for (i = 0, m = cls->methods; m->desc; i++, m++) {
  if (m->desc->id == 0)
   m->desc->id = kobj_next_id++;
 }




 for (i = 0; i < KOBJ_CACHE_SIZE; i++)
  ops->cache[i] = &null_method;
 ops->cls = cls;
 cls->ops = ops;
}
