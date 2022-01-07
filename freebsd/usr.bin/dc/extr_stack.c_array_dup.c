
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {size_t size; int * data; } ;


 int array_grow (struct array*,size_t) ;
 struct array* array_new () ;
 int stack_dup_value (int *,int *) ;

__attribute__((used)) static struct array *
array_dup(const struct array *a)
{
 struct array *n;
 size_t i;

 if (a == ((void*)0))
  return (((void*)0));
 n = array_new();
 array_grow(n, a->size);
 for (i = 0; i < a->size; i++)
  stack_dup_value(&a->data[i], &n->data[i]);
 return (n);
}
