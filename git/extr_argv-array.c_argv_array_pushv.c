
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,char const*) ;

void argv_array_pushv(struct argv_array *array, const char **argv)
{
 for (; *argv; argv++)
  argv_array_push(array, *argv);
}
