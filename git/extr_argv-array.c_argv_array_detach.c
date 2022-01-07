
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {scalar_t__ argv; } ;


 int argv_array_init (struct argv_array*) ;
 scalar_t__ empty_argv ;
 char const** xcalloc (int,int) ;

const char **argv_array_detach(struct argv_array *array)
{
 if (array->argv == empty_argv)
  return xcalloc(1, sizeof(const char *));
 else {
  const char **ret = array->argv;
  argv_array_init(array);
  return ret;
 }
}
