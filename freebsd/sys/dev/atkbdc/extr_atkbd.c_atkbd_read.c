
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kb_count; scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_6__ {int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 scalar_t__ KBD_IS_ACTIVE (TYPE_1__*) ;
 int read_kbd_data (int ) ;
 int read_kbd_data_no_wait (int ) ;

__attribute__((used)) static int
atkbd_read(keyboard_t *kbd, int wait)
{
 int c;

 if (wait)
  c = read_kbd_data(((atkbd_state_t *)kbd->kb_data)->kbdc);
 else
  c = read_kbd_data_no_wait(((atkbd_state_t *)kbd->kb_data)->kbdc);
 if (c != -1)
  ++kbd->kb_count;
 return (KBD_IS_ACTIVE(kbd) ? c : -1);
}
