
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ndptr ;


 int CHRSAVE (int) ;
 int EOF ;
 char EOS ;
 int MAXTOK ;
 int PUSHBACK (int) ;
 char* ep ;
 int gpbc () ;
 scalar_t__ isalnum (int) ;
 int * macro_getdef (int *) ;
 int macros ;
 int * ohash_find (int *,int ) ;
 int ohash_qlookupi (int *,char*,char const**) ;
 int outputstr (char*) ;
 int reallyputchar (int) ;
 scalar_t__ sp ;

__attribute__((used)) static ndptr
inspect(int c, char *tp)
{
 char *name = tp;
 char *etp = tp+MAXTOK;
 ndptr p;

 *tp++ = c;

 while ((isalnum(c = gpbc()) || c == '_') && tp < etp)
  *tp++ = c;
 if (c != EOF)
  PUSHBACK(c);
 *tp = EOS;


 if (tp == ep) {
  outputstr(name);
  while (isalnum(c = gpbc()) || c == '_') {
   if (sp < 0)
    reallyputchar(c);
   else
    CHRSAVE(c);
  }
  *name = EOS;
  return ((void*)0);
 }

 p = ohash_find(&macros, ohash_qlookupi(&macros, name, (const char **)&tp));
 if (p == ((void*)0))
  return ((void*)0);
 if (macro_getdef(p) == ((void*)0))
  return ((void*)0);
 return p;
}
