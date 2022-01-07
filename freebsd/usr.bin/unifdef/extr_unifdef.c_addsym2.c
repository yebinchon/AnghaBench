
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXSYMS ;
 int debugsym (char*,int) ;
 int errx (int,char*) ;
 int findsym (char const**) ;
 int* ignore ;
 scalar_t__ nsyms ;
 char const** symname ;
 char const** value ;

__attribute__((used)) static void
addsym2(bool ignorethis, const char *sym, const char *val)
{
 const char *cp = sym;
 int symind;

 symind = findsym(&cp);
 if (symind < 0) {
  if (nsyms >= MAXSYMS)
   errx(2, "too many symbols");
  symind = nsyms++;
 }
 ignore[symind] = ignorethis;
 symname[symind] = sym;
 value[symind] = val;
 debugsym("addsym", symind);
}
