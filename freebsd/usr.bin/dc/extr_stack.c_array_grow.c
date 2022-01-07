
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct array {size_t size; TYPE_1__* data; } ;
struct TYPE_3__ {int * array; int type; } ;


 int BCODE_NONE ;
 TYPE_1__* breallocarray (TYPE_1__*,size_t,int) ;

__attribute__((used)) static __inline void
array_grow(struct array *array, size_t newsize)
{
 size_t i;

 array->data = breallocarray(array->data, newsize, sizeof(*array->data));
 for (i = array->size; i < newsize; i++) {
  array->data[i].type = BCODE_NONE;
  array->data[i].array = ((void*)0);
 }
 array->size = newsize;
}
