
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_definition {char* defn; int type; } ;
typedef int * ndptr ;


 int eval (char const**,int,int ,int ) ;
 int is_traced (int *) ;
 int * lookup (char const*) ;
 int m4errx (int,char*,char const*) ;
 struct macro_definition* macro_getdef (int *) ;

void
doindir(const char *argv[], int argc)
{
 ndptr n;
 struct macro_definition *p = ((void*)0);

 n = lookup(argv[2]);
 if (n == ((void*)0) || (p = macro_getdef(n)) == ((void*)0))
  m4errx(1, "indir: undefined macro %s.", argv[2]);
 argv[1] = p->defn;

 eval(argv+1, argc-1, p->type, is_traced(n));
}
