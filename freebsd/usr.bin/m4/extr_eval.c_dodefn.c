
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_definition {int type; int defn; } ;


 int BUILTIN_MARKER ;
 int MACRTYPE ;
 int TYPEMASK ;
 struct macro_definition* lookup_macro_definition (char const*) ;
 int lquote ;
 int pbstr (int ) ;
 int rquote ;

__attribute__((used)) static void
dodefn(const char *name)
{
 struct macro_definition *p;

 if ((p = lookup_macro_definition(name)) != ((void*)0)) {
  if ((p->type & TYPEMASK) == MACRTYPE) {
   pbstr(rquote);
   pbstr(p->defn);
   pbstr(lquote);
  } else {
   pbstr(p->defn);
   pbstr(BUILTIN_MARKER);
  }
 }
}
