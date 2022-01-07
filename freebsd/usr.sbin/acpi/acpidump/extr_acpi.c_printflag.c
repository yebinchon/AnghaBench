
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int pf_sep ;
 int printf (char*,int,char const*) ;

__attribute__((used)) static void
printflag(uint64_t var, uint64_t mask, const char *name)
{

 if (var & mask) {
  printf("%c%s", pf_sep, name);
  pf_sep = ',';
 }
}
