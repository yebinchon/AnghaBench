
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IDENT_SEND ;

 int be_state ;
 int ident_idx ;

__attribute__((used)) static void
fwctl_outw(uint16_t val)
{
 switch (be_state) {
 case 128:
  if (val == 0) {
   be_state = IDENT_SEND;
   ident_idx = 0;
  }
  break;
 default:

  break;
 }
}
