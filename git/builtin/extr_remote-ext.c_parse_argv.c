
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,char*) ;
 int free (char*) ;
 char* strip_escapes (char const*,char const*,char const**) ;

__attribute__((used)) static void parse_argv(struct argv_array *out, const char *arg, const char *service)
{
 while (*arg) {
  char *expanded = strip_escapes(arg, service, &arg);
  if (expanded)
   argv_array_push(out, expanded);
  free(expanded);
 }
}
