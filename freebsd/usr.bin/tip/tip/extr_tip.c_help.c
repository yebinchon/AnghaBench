
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_flags; char* e_help; scalar_t__ e_char; } ;
typedef TYPE_1__ esctable_t ;


 int ESCAPE ;
 int EXP ;
 int PRIV ;
 scalar_t__ character (int ) ;
 char* ctrl (scalar_t__) ;
 TYPE_1__* etable ;
 int printf (char*,...) ;
 scalar_t__ uid ;
 int value (int ) ;

void
help(int c)
{
 esctable_t *p;

 printf("%c\r\n", c);
 for (p = etable; p->e_char; p++) {
  if ((p->e_flags&PRIV) && uid)
   continue;
  printf("%2s", ctrl(character(value(ESCAPE))));
  printf("%-2s %c   %s\r\n", ctrl(p->e_char),
   p->e_flags&EXP ? '*': ' ', p->e_help);
 }
}
