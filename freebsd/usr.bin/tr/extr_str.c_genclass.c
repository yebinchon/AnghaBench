
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastch; int state; int str; scalar_t__ cnt; int cclass; } ;
typedef TYPE_1__ STR ;


 int CCLASS ;
 int CCLASS_LOWER ;
 int CCLASS_UPPER ;
 int errx (int,char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int wctype (int ) ;

__attribute__((used)) static void
genclass(STR *s)
{

 if ((s->cclass = wctype(s->str)) == 0)
  errx(1, "unknown class %s", s->str);
 s->cnt = 0;
 s->lastch = -1;
 if (strcmp(s->str, "upper") == 0)
  s->state = CCLASS_UPPER;
 else if (strcmp(s->str, "lower") == 0)
  s->state = CCLASS_LOWER;
 else
  s->state = CCLASS;
}
