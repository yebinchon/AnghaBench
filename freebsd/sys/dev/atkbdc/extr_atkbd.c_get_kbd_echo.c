
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int ENXIO ;
 int FALSE ;
 int KBDC_ECHO ;
 scalar_t__ KBD_ECHO ;
 int TRUE ;
 int empty_both_buffers (int ,int) ;
 scalar_t__ read_kbd_data (int ) ;
 scalar_t__ setup_kbd_port (int ,int ,int ) ;
 int test_controller (int ) ;
 int test_kbd_port (int ) ;
 int write_kbd_command (int ,int ) ;

__attribute__((used)) static int
get_kbd_echo(KBDC kbdc)
{

 if (setup_kbd_port(kbdc, TRUE, FALSE))

  return ENXIO;


 write_kbd_command(kbdc, KBDC_ECHO);
 if (read_kbd_data(kbdc) != KBD_ECHO) {
  empty_both_buffers(kbdc, 10);
  test_controller(kbdc);
  test_kbd_port(kbdc);
  return ENXIO;
 }


 if (setup_kbd_port(kbdc, TRUE, TRUE)) {




  return ENXIO;
 }

 return 0;
}
