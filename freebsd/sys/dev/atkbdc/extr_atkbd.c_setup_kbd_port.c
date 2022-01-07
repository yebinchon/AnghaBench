
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_KBD_INT ;
 int KBD_ENABLE_KBD_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int set_controller_command_byte (int ,int ,int) ;

__attribute__((used)) static int
setup_kbd_port(KBDC kbdc, int port, int intr)
{
 if (!set_controller_command_byte(kbdc,
  KBD_KBD_CONTROL_BITS,
  ((port) ? KBD_ENABLE_KBD_PORT : KBD_DISABLE_KBD_PORT)
      | ((intr) ? KBD_ENABLE_KBD_INT : KBD_DISABLE_KBD_INT)))
  return 1;
 return 0;
}
