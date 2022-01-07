
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char const** argv; int argc; } ;


 int argv_array_push_nodup (struct argv_array*,int ) ;
 int xstrdup (char const*) ;

const char *argv_array_push(struct argv_array *array, const char *value)
{
 argv_array_push_nodup(array, xstrdup(value));
 return array->argv[array->argc - 1];
}
