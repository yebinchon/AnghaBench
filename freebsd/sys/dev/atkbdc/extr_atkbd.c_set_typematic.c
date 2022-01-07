
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kb_delay2; int kb_delay1; TYPE_2__* kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int DEFAULT_DELAY ;
 int DEFAULT_RATE ;
 int KBDC_SET_TYPEMATIC ;
 int typematic (int ,int ) ;
 int typematic_delay (int) ;
 int typematic_rate (int) ;
 int write_kbd (int ,int ,int) ;

__attribute__((used)) static int
set_typematic(keyboard_t *kbd)
{
 int val, error;
 atkbd_state_t *state = kbd->kb_data;

 val = typematic(DEFAULT_DELAY, DEFAULT_RATE);
 error = write_kbd(state->kbdc, KBDC_SET_TYPEMATIC, val);
 if (error == 0) {
  kbd->kb_delay1 = typematic_delay(val);
  kbd->kb_delay2 = typematic_rate(val);
 }

 return (error);
}
