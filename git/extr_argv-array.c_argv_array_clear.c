
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char* argv; int argc; } ;


 int argv_array_init (struct argv_array*) ;
 char* empty_argv ;
 int free (char*) ;

void argv_array_clear(struct argv_array *array)
{
 if (array->argv != empty_argv) {
  int i;
  for (i = 0; i < array->argc; i++)
   free((char *)array->argv[i]);
  free(array->argv);
 }
 argv_array_init(array);
}
