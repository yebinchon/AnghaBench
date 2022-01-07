
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugsym (char*,int) ;
 int findsym (char const**) ;
 int nsyms ;
 char** value ;

__attribute__((used)) static void
indirectsym(void)
{
 const char *cp;
 int changed, sym, ind;

 do {
  changed = 0;
  for (sym = 0; sym < nsyms; ++sym) {
   if (value[sym] == ((void*)0))
    continue;
   cp = value[sym];
   ind = findsym(&cp);
   if (ind == -1 || ind == sym ||
       *cp != '\0' ||
       value[ind] == ((void*)0) ||
       value[ind] == value[sym])
    continue;
   debugsym("indir...", sym);
   value[sym] = value[ind];
   debugsym("...ectsym", sym);
   changed++;
  }
 } while (changed);
}
