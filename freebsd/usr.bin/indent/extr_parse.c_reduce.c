
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* p_stack; size_t tos; int * il; int i_l_follow; int * cstk; } ;


 int case_ind ;

 int dohead ;



 int ifhead ;

 int const lbrace ;
 TYPE_1__ ps ;





__attribute__((used)) static void
reduce(void)
{
    int i;

    for (;;) {


 switch (ps.p_stack[ps.tos]) {

 case 131:
     switch (ps.p_stack[ps.tos - 1]) {

     case 131:
     case 130:

  ps.p_stack[--ps.tos] = 130;
  break;

     case 135:
  ps.p_stack[--ps.tos] = dohead;
  ps.i_l_follow = ps.il[ps.tos];
  break;

     case 132:

  ps.p_stack[--ps.tos] = ifhead;
  for (i = ps.tos - 1;
   (
    ps.p_stack[i] != 131
    &&
    ps.p_stack[i] != 130
    &&
    ps.p_stack[i] != lbrace
    );
   --i);
  ps.i_l_follow = ps.il[i];





  break;

     case 129:

  case_ind = ps.cstk[ps.tos - 1];

     case 136:
     case 134:

     case 133:

     case 128:

  ps.p_stack[--ps.tos] = 131;
  ps.i_l_follow = ps.il[ps.tos];
  break;

     default:
  return;

     }
     break;

 case 128:
     if (ps.p_stack[ps.tos - 1] == dohead) {

  ps.tos -= 2;
  break;
     }
     else
  return;

 default:
     return;

 }
    }
}
