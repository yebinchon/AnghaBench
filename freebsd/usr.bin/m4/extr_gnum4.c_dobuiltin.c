
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ndptr ;


 int eval (char const**,int,int ,int ) ;
 int is_traced (int *) ;
 int m4errx (int,char*,char const*) ;
 int macro_builtin_type (int *) ;
 int * macro_getbuiltin (char const*) ;

void
dobuiltin(const char *argv[], int argc)
{
 ndptr p;

 argv[1] = ((void*)0);
 p = macro_getbuiltin(argv[2]);
 if (p != ((void*)0))
  eval(argv+1, argc-1, macro_builtin_type(p), is_traced(p));
 else
  m4errx(1, "unknown builtin %s.", argv[2]);
}
