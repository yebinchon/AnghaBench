
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;
typedef int kobj_class_t ;


 int M_NOWAIT ;
 int kobj_init1 (int ,int ,int ) ;
 int panic (char*,int) ;

void
kobj_init(kobj_t obj, kobj_class_t cls)
{
 int error;

 error = kobj_init1(obj, cls, M_NOWAIT);
 if (error != 0)
  panic("kobj_init1 failed: error %d", error);
}
