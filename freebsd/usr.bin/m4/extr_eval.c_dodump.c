
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_definition {int dummy; } ;


 int dump_one_def (char const*,struct macro_definition*) ;
 struct macro_definition* lookup_macro_definition (char const*) ;
 int macro_for_all (int (*) (char const*,struct macro_definition*)) ;

__attribute__((used)) static void
dodump(const char *argv[], int argc)
{
 int n;
 struct macro_definition *p;

 if (argc > 2) {
  for (n = 2; n < argc; n++)
   if ((p = lookup_macro_definition(argv[n])) != ((void*)0))
    dump_one_def(argv[n], p);
 } else
  macro_for_all(dump_one_def);
}
