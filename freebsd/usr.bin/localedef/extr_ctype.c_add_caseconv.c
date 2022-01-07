
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int toupper; int tolower; } ;
typedef TYPE_1__ ctype_node_t ;


 int INTERR ;


 TYPE_1__* get_ctype (int) ;
 int last_kw ;

void
add_caseconv(int val, int wc)
{
 ctype_node_t *ctn;

 ctn = get_ctype(val);
 if (ctn == ((void*)0)) {
  INTERR;
  return;
 }

 switch (last_kw) {
 case 128:
  ctn->toupper = wc;
  break;
 case 129:
  ctn->tolower = wc;
  break;
 default:
  INTERR;
  break;
 }
}
