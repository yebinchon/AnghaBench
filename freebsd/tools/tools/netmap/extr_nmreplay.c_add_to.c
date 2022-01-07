
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ED (char*,char const*,char const*) ;
 int exit (int) ;

__attribute__((used)) static void
add_to(const char ** v, int l, const char *arg, const char *msg)
{
 for (; l > 0 && *v != ((void*)0) ; l--, v++);
 if (l == 0) {
  ED("%s %s", msg, arg);
  exit(1);
 }
 *v = arg;
}
