
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int printf (char*,int ) ;

__attribute__((used)) static void sym_printb_hex (u_char *p, int n)
{
 while (n-- > 0)
  printf (" %x", *p++);
}
