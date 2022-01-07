
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {size_t size; struct array* data; } ;


 int free (struct array*) ;
 int stack_free_value (struct array*) ;

__attribute__((used)) static __inline void
array_free(struct array *a)
{
 size_t i;

 if (a == ((void*)0))
  return;
 for (i = 0; i < a->size; i++)
  stack_free_value(&a->data[i]);
 free(a->data);
 free(a);
}
