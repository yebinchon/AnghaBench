
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addsym2 (int,char const*,char const*) ;
 char* skipsym (char const*) ;
 int usage () ;

__attribute__((used)) static void
addsym1(bool ignorethis, bool definethis, char *symval)
{
 const char *sym, *val;

 sym = symval;
 val = skipsym(sym);
 if (definethis && *val == '=') {
  symval[val - sym] = '\0';
  val = val + 1;
 } else if (*val == '\0') {
  val = definethis ? "1" : ((void*)0);
 } else {
  usage();
 }
 addsym2(ignorethis, sym, val);
}
