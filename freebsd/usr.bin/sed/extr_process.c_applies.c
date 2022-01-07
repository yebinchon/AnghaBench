
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s_command {scalar_t__ startline; scalar_t__ nonsel; TYPE_2__* a1; TYPE_2__* a2; } ;
struct TYPE_3__ {scalar_t__ l; } ;
struct TYPE_4__ {int type; TYPE_1__ u; } ;


 int AT_LINE ;

 int MATCH (TYPE_2__*) ;
 int lastaddr ;
 scalar_t__ linenum ;

__attribute__((used)) static inline int
applies(struct s_command *cp)
{
 int r;

 lastaddr = 0;
 if (cp->a1 == ((void*)0) && cp->a2 == ((void*)0))
  r = 1;
 else if (cp->a2)
  if (cp->startline > 0) {
                        switch (cp->a2->type) {
                        case 128:
                                if (linenum - cp->startline <= cp->a2->u.l)
                                        r = 1;
                                else {
            cp->startline = 0;
            r = 0;
                                }
                                break;
                        default:
                                if (MATCH(cp->a2)) {
                                        cp->startline = 0;
                                        lastaddr = 1;
                                        r = 1;
                                } else if (cp->a2->type == AT_LINE &&
                                            linenum > cp->a2->u.l) {





                                        cp->startline = 0;
                                        r = 0;
                                } else
                                        r = 1;
                        }
  } else if (cp->a1 && MATCH(cp->a1)) {







   if ((cp->a2->type == AT_LINE &&
       linenum >= cp->a2->u.l) ||
       (cp->a2->type == 128 && cp->a2->u.l == 0))
    lastaddr = 1;
   else {
    cp->startline = linenum;
   }
   r = 1;
  } else
   r = 0;
 else
  r = MATCH(cp->a1);
 return (cp->nonsel ? ! r : r);
}
