
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int EIO ;
 int empty_both_buffers (int ,int) ;
 int spltty () ;
 int splx (int) ;
 int test_controller (int ) ;
 scalar_t__ test_kbd_port (int ) ;

__attribute__((used)) static int
atkbd_test_if(keyboard_t *kbd)
{
 int error;
 int s;

 error = 0;
 empty_both_buffers(((atkbd_state_t *)kbd->kb_data)->kbdc, 10);
 s = spltty();
 if (!test_controller(((atkbd_state_t *)kbd->kb_data)->kbdc))
  error = EIO;
 else if (test_kbd_port(((atkbd_state_t *)kbd->kb_data)->kbdc) != 0)
  error = EIO;
 splx(s);

 return error;
}
