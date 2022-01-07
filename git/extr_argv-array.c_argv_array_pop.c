
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argc; int ** argv; } ;


 int free (char*) ;

void argv_array_pop(struct argv_array *array)
{
 if (!array->argc)
  return;
 free((char *)array->argv[array->argc - 1]);
 array->argv[array->argc - 1] = ((void*)0);
 array->argc--;
}
