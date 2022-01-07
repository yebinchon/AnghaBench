
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 scalar_t__ ALLOW_DISABLE_KBD (int ) ;
 int ENXIO ;
 int FALSE ;
 scalar_t__ HAS_QUIRK (int ,int ) ;
 int KBDC_DISABLE_KBD_PORT ;
 int KBDC_QUIRK_IGNORE_PROBE_RESULT ;
 int KBD_KBD_CONTROL_BITS ;
 int KB_CONF_NO_PROBE_TEST ;
 int TRUE ;
 int empty_both_buffers (int ,int) ;
 int get_controller_command_byte (int ) ;
 int get_kbd_echo (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int kbdc_set_device_mask (int ,int) ;
 int set_controller_command_byte (int ,int,int) ;
 int setup_kbd_port (int ,int ,int ) ;
 int test_controller (int ) ;
 int test_kbd_port (int ) ;
 int write_controller_command (int ,int ) ;

__attribute__((used)) static int
probe_keyboard(KBDC kbdc, int flags)
{




 int err;
 int c;
 int m;

 if (!kbdc_lock(kbdc, TRUE)) {

  return ENXIO;
 }


 write_controller_command(kbdc, KBDC_DISABLE_KBD_PORT);


 empty_both_buffers(kbdc, 100);


 m = kbdc_get_device_mask(kbdc) & ~KBD_KBD_CONTROL_BITS;
 c = get_controller_command_byte(kbdc);
 if (c == -1) {

  kbdc_set_device_mask(kbdc, m);
  kbdc_lock(kbdc, FALSE);
  return ENXIO;
 }
 test_controller(kbdc);
 if (!(flags & KB_CONF_NO_PROBE_TEST))
  test_kbd_port(kbdc);

 err = get_kbd_echo(kbdc);
 kbdc_set_device_mask(kbdc, m | KBD_KBD_CONTROL_BITS);
 setup_kbd_port(kbdc, TRUE, TRUE);
 kbdc_lock(kbdc, FALSE);
 return (HAS_QUIRK(kbdc, KBDC_QUIRK_IGNORE_PROBE_RESULT) ? 0 : err);
}
