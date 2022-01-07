
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skipcomment (char const*) ;
 char* skipsym (char const*) ;
 char const* xstrdup (char const*,char const*) ;

__attribute__((used)) static const char *
getsym(const char **cpp)
{
 const char *cp = *cpp, *sym;

 cp = skipcomment(cp);
 cp = skipsym(sym = cp);
 if (cp == sym)
  return ((void*)0);
 *cpp = cp;
 return (xstrdup(sym, cp));
}
