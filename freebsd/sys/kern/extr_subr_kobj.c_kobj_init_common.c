
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* kobj_t ;
typedef TYPE_2__* kobj_class_t ;
struct TYPE_6__ {int refs; int ops; } ;
struct TYPE_5__ {int ops; } ;



__attribute__((used)) static void
kobj_init_common(kobj_t obj, kobj_class_t cls)
{

 obj->ops = cls->ops;
 cls->refs++;
}
