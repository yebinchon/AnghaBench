
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct s_command* c; } ;
struct s_command {char code; scalar_t__ startline; scalar_t__ a2; struct s_command* next; TYPE_1__ u; } ;


 int HS ;
 int REPLACE ;
 int cspace (int *,char*,int ,int ) ;
 struct s_command* prog ;

void
resetstate(void)
{
 struct s_command *cp;




 for (cp = prog; cp; cp = cp->code == '{' ? cp->u.c : cp->next)
  if (cp->a2)
   cp->startline = 0;




 cspace(&HS, "", 0, REPLACE);
}
