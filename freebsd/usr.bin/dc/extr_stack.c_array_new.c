
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {scalar_t__ size; int * data; } ;


 struct array* bmalloc (int) ;

__attribute__((used)) static struct array *
array_new(void)
{
 struct array *a;

 a = bmalloc(sizeof(*a));
 a->data = ((void*)0);
 a->size = 0;
 return a;
}
