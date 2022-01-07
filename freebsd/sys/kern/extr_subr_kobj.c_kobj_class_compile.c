
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_class_t ;


 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int kobj_class_compile1 (int ,int ) ;

void
kobj_class_compile(kobj_class_t cls)
{
 int error;

 error = kobj_class_compile1(cls, M_WAITOK);
 KASSERT(error == 0, ("kobj_class_compile1 returned %d", error));
}
