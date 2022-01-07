
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* v_name; int v_type; int v_value; } ;
typedef TYPE_1__ value_t ;




 int FALSE ;
 scalar_t__ MIDDLE ;


 int TMASK ;
 int boolean (int ) ;
 int character (int ) ;
 scalar_t__ col ;
 char* ctrl (int ) ;
 char* interp (int ) ;
 int number (int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ size (char*) ;

__attribute__((used)) static void
vprint(value_t *p)
{
 char *cp;

 if (col > 0 && col < MIDDLE)
  while (col++ < MIDDLE)
   putchar(' ');
 col += size(p->v_name);
 switch (p->v_type&TMASK) {

 case 131:
  if (boolean(p->v_value) == FALSE) {
   col++;
   putchar('!');
  }
  printf("%s", p->v_name);
  break;

 case 128:
  printf("%s=", p->v_name);
  col++;
  if (p->v_value) {
   cp = interp(p->v_value);
   col += size(cp);
   printf("%s", cp);
  }
  break;

 case 129:
  col += 6;
  printf("%s=%-5ld", p->v_name, number(p->v_value));
  break;

 case 130:
  printf("%s=", p->v_name);
  col++;
  if (p->v_value) {
   cp = ctrl(character(p->v_value));
   col += size(cp);
   printf("%s", cp);
  }
  break;
 }
 if (col >= MIDDLE) {
  col = 0;
  printf("\r\n");
  return;
 }
}
