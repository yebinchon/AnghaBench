
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int printf (char*) ;

__attribute__((used)) static void
dump_other_cond(u_char *p, int len)
{
 if (p[0] && len > 0) {
  printf("\t");
  if (p[0] & 1)
   printf("(MWAIT)");
  if (p[0] & 2)
   printf(" (3V card)");
  if (p[0] & 0x80)
   printf(" (Extension bytes follow)");
  printf("\n");
 }
}
