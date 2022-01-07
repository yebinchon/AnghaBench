
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct array {size_t size; struct value* data; } ;


 int array_grow (struct array*,size_t) ;
 int stack_free_value (struct value*) ;

__attribute__((used)) static __inline void
array_assign(struct array *array, size_t i, const struct value *v)
{

 if (i >= array->size)
  array_grow(array, i + 1);
 stack_free_value(&array->data[i]);
 array->data[i] = *v;
}
