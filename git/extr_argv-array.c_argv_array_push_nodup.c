
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char const** argv; int argc; int alloc; } ;


 int ALLOC_GROW (char const**,int,int ) ;
 char const** empty_argv ;

__attribute__((used)) static void argv_array_push_nodup(struct argv_array *array, const char *value)
{
 if (array->argv == empty_argv)
  array->argv = ((void*)0);

 ALLOC_GROW(array->argv, array->argc + 2, array->alloc);
 array->argv[array->argc++] = value;
 array->argv[array->argc] = ((void*)0);
}
