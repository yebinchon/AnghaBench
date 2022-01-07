
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ktyp; int knam; } ;


 scalar_t__ MAXKEYS ;
 unsigned int NEEDARGS ;
 int NOARGS ;
 unsigned int TYPEMASK ;
 TYPE_1__* keywrds ;
 int setup_builtin (int ,unsigned int) ;

__attribute__((used)) static void
initkwds(void)
{
 unsigned int type;
 int i;

 for (i = 0; i < (int)MAXKEYS; i++) {
  type = keywrds[i].ktyp & TYPEMASK;
  if ((keywrds[i].ktyp & NOARGS) == 0)
   type |= NEEDARGS;
  setup_builtin(keywrds[i].knam, type);
 }
}
