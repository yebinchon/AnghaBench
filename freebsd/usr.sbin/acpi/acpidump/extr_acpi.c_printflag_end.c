
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char pf_sep ;
 int printf (char*) ;

__attribute__((used)) static void
printflag_end(void)
{

 if (pf_sep != '{') {
  printf("}");
  pf_sep = '{';
 }
 printf("\n");
}
