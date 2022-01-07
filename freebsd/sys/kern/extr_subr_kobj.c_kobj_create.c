
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct malloc_type {int dummy; } ;
typedef int * kobj_t ;
typedef TYPE_1__* kobj_class_t ;
struct TYPE_4__ {int size; } ;


 int M_ZERO ;
 int free (int *,struct malloc_type*) ;
 scalar_t__ kobj_init1 (int *,TYPE_1__*,int) ;
 int * malloc (int ,struct malloc_type*,int) ;

kobj_t
kobj_create(kobj_class_t cls, struct malloc_type *mtype, int mflags)
{
 kobj_t obj;

 obj = malloc(cls->size, mtype, mflags | M_ZERO);
 if (obj == ((void*)0))
  return (((void*)0));
 if (kobj_init1(obj, cls, mflags) != 0) {
  free(obj, mtype);
  return (((void*)0));
 }
 return (obj);
}
