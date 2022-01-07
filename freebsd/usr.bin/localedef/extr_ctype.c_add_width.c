
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctype; } ;
typedef TYPE_1__ ctype_node_t ;


 int INTERR ;
 int _CTYPE_SW0 ;
 int _CTYPE_SW1 ;
 int _CTYPE_SW2 ;
 int _CTYPE_SW3 ;
 int _CTYPE_SWM ;
 TYPE_1__* get_ctype (int) ;

void
add_width(int wc, int width)
{
 ctype_node_t *ctn;

 if ((ctn = get_ctype(wc)) == ((void*)0)) {
  INTERR;
  return;
 }
 ctn->ctype &= ~(_CTYPE_SWM);
 switch (width) {
 case 0:
  ctn->ctype |= _CTYPE_SW0;
  break;
 case 1:
  ctn->ctype |= _CTYPE_SW1;
  break;
 case 2:
  ctn->ctype |= _CTYPE_SW2;
  break;
 case 3:
  ctn->ctype |= _CTYPE_SW3;
  break;
 }
}
