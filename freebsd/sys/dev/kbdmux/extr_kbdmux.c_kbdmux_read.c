
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kb_count; scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
typedef int kbdmux_state_t ;


 int KBDMUX_LOCK (int *) ;
 int KBDMUX_UNLOCK (int *) ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_1__*) ;
 int kbdmux_kbd_getc (int *) ;

__attribute__((used)) static int
kbdmux_read(keyboard_t *kbd, int wait)
{
 kbdmux_state_t *state = (kbdmux_state_t *) kbd->kb_data;
 int c;

 KBDMUX_LOCK(state);
 c = kbdmux_kbd_getc(state);
 KBDMUX_UNLOCK(state);

 if (c != -1)
  kbd->kb_count ++;

 return (KBD_IS_ACTIVE(kbd)? c : -1);
}
