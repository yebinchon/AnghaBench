
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ks_inq_length; unsigned int ks_inq_start; char* ks_inq; } ;
typedef TYPE_1__ kbdmux_state_t ;


 unsigned int KBDMUX_Q_SIZE ;

__attribute__((used)) static void
kbdmux_kbd_putc(kbdmux_state_t *state, char c)
{
 unsigned int p;

 if (state->ks_inq_length == KBDMUX_Q_SIZE)
  return;

 p = (state->ks_inq_start + state->ks_inq_length) % KBDMUX_Q_SIZE;
 state->ks_inq[p] = c;
 state->ks_inq_length++;
}
