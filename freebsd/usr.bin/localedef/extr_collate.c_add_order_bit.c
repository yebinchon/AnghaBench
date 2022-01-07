
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t directive_count; int * directive; } ;


 int DIRECTIVE_BACKWARD ;
 int DIRECTIVE_FORWARD ;
 int DIRECTIVE_POSITION ;
 int DIRECTIVE_UNDEF ;
 int INTERR ;



 TYPE_1__ collinfo ;

void
add_order_bit(int kw)
{
 uint8_t bit = DIRECTIVE_UNDEF;

 switch (kw) {
 case 129:
  bit = DIRECTIVE_FORWARD;
  break;
 case 130:
  bit = DIRECTIVE_BACKWARD;
  break;
 case 128:
  bit = DIRECTIVE_POSITION;
  break;
 default:
  INTERR;
  break;
 }
 collinfo.directive[collinfo.directive_count] |= bit;
}
