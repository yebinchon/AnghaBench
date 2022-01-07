
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int printf (char*,...) ;
 int sym_printb_hex (int *,int) ;

__attribute__((used)) static void sym_printl_hex (char *label, u_char *p, int n)
{
 printf ("%s", label);
 sym_printb_hex (p, n);
 printf (".\n");
}
