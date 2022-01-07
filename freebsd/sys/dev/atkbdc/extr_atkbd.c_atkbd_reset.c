
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 scalar_t__ ALLOW_DISABLE_KBD (int ) ;
 int EIO ;
 int KBD_KBD_CONTROL_BITS ;
 int KB_CONF_NO_RESET ;
 scalar_t__ bootverbose ;
 int empty_both_buffers (int ,int) ;
 int printf (char*) ;
 int reset_kbd (int ) ;
 int set_controller_command_byte (int ,int,int) ;
 int test_controller (int ) ;
 int test_kbd_port (int ) ;

__attribute__((used)) static int
atkbd_reset(KBDC kbdc, int flags, int c)
{

 if (!(flags & KB_CONF_NO_RESET) && !reset_kbd(kbdc)) {
  empty_both_buffers(kbdc, 10);
  test_controller(kbdc);
  test_kbd_port(kbdc);




  set_controller_command_byte(kbdc,
      ALLOW_DISABLE_KBD(kbdc) ? 0xff : KBD_KBD_CONTROL_BITS, c);
  if (bootverbose)
   printf("atkbd: failed to reset the keyboard.\n");
  return (EIO);
 }
 return (0);
}
