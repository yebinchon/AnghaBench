
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct array {size_t size; struct value* data; } ;



__attribute__((used)) static __inline struct value *
array_retrieve(const struct array *array, size_t i)
{

 if (i >= array->size)
  return (((void*)0));
 return &array->data[i];
}
