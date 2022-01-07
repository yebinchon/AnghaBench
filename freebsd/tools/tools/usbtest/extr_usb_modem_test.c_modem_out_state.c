
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int out_state; int c0; scalar_t__ modem_at_mode; } ;


 TYPE_1__ modem ;

__attribute__((used)) static void
modem_out_state(uint8_t *buf)
{
 if (modem.modem_at_mode) {
  switch (modem.out_state & 3) {
  case 0:
   *buf = 'A';
   break;
  case 1:
   *buf = 'T';
   break;
  case 2:
   *buf = '\r';
   break;
  default:
   *buf = '\n';
   modem.c0++;
   break;
  }
  modem.out_state++;
 } else {
  *buf = modem.out_state;
  modem.out_state++;
  modem.out_state %= 255;
 }
}
