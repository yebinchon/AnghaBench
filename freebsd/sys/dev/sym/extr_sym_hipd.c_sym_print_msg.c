
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ccb_p ;


 int PRINT_ADDR (int ) ;
 int printf (char*,...) ;
 int sym_show_msg (int *) ;

__attribute__((used)) static void sym_print_msg (ccb_p cp, char *label, u_char *msg)
{
 PRINT_ADDR(cp);
 if (label)
  printf ("%s: ", label);

 (void) sym_show_msg (msg);
 printf (".\n");
}
