
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {scalar_t__ alloc; scalar_t__ argc; int argv; } ;


 int empty_argv ;

void argv_array_init(struct argv_array *array)
{
 array->argv = empty_argv;
 array->argc = 0;
 array->alloc = 0;
}
