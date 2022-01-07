
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 scalar_t__ ALLOW_DISABLE_KBD (int ) ;
 int EIO ;
 int FALSE ;
 scalar_t__ HAS_QUIRK (int ,int ) ;
 int KBDC_DISABLE_KBD_PORT ;
 int KBDC_ENABLE_KBD ;
 int KBDC_QUIRK_RESET_AFTER_PROBE ;
 int KBDC_QUIRK_SETLEDS_ON_INIT ;
 int KBDC_SET_LEDS ;
 int KBDC_SET_SCANCODE_SET ;
 scalar_t__ KBD_ACK ;
 int KBD_ENABLE_KBD_INT ;
 int KBD_ENABLE_KBD_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int KBD_OVERRIDE_KBD_LOCK ;
 int KBD_TRANSLATION ;
 int KB_101 ;
 int KB_84 ;
 int KB_CONF_ALT_SCANCODESET ;
 int KB_OTHER ;
 int TRUE ;
 scalar_t__ atkbd_reset (int ,int,int) ;
 scalar_t__ bootverbose ;
 int empty_both_buffers (int ,int) ;
 int get_controller_command_byte (int ) ;
 int get_kbd_id (int ) ;
 int kbdc_lock (int ,int ) ;
 int printf (char*,...) ;
 int read_kbd_data (int ) ;
 int send_kbd_command (int ,int ) ;
 scalar_t__ send_kbd_command_and_data (int ,int ,int) ;
 int set_controller_command_byte (int ,int,int) ;
 scalar_t__ setup_kbd_port (int ,int ,int ) ;
 int write_controller_command (int ,int ) ;

__attribute__((used)) static int
init_keyboard(KBDC kbdc, int *type, int flags)
{
 int codeset;
 int id;
 int c;

 if (!kbdc_lock(kbdc, TRUE)) {

  return EIO;
 }


 write_controller_command(kbdc, KBDC_DISABLE_KBD_PORT);


 empty_both_buffers(kbdc, 200);
 c = get_controller_command_byte(kbdc);
 if (c == -1) {

  kbdc_lock(kbdc, FALSE);
  printf("atkbd: unable to get the current command byte value.\n");
  return EIO;
 }
 if (bootverbose)
  printf("atkbd: the current kbd controller command byte %04x\n",
     c);






 if (setup_kbd_port(kbdc, TRUE, FALSE)) {

  printf("atkbd: unable to set the command byte.\n");
  kbdc_lock(kbdc, FALSE);
  return EIO;
 }

 if (HAS_QUIRK(kbdc, KBDC_QUIRK_RESET_AFTER_PROBE) &&
     atkbd_reset(kbdc, flags, c)) {
  kbdc_lock(kbdc, FALSE);
  return EIO;
 }







 codeset = -1;
 if (flags & KB_CONF_ALT_SCANCODESET)

  codeset = 1;
 *type = KB_OTHER;
 id = get_kbd_id(kbdc);
 switch(id) {
 case 0x41ab:
 case 0x83ab:
 case 0x54ab:
 case 0x84ab:





  *type = KB_101;
  break;
 case -1:
  *type = KB_84;
  break;
 default:
  break;
 }
 if (bootverbose)
  printf("atkbd: keyboard ID 0x%x (%d)\n", id, *type);

 if (!HAS_QUIRK(kbdc, KBDC_QUIRK_RESET_AFTER_PROBE) &&
     atkbd_reset(kbdc, flags, c)) {
  kbdc_lock(kbdc, FALSE);
  return EIO;
 }






 if (codeset == 1) {
  if (send_kbd_command_and_data(kbdc,
   KBDC_SET_SCANCODE_SET, codeset) == KBD_ACK) {

   c &= ~KBD_TRANSLATION;
  } else {





   set_controller_command_byte(kbdc, ALLOW_DISABLE_KBD(kbdc)
       ? 0xff : KBD_KBD_CONTROL_BITS, c);
   kbdc_lock(kbdc, FALSE);
   printf("atkbd: unable to set the XT keyboard mode.\n");
   return EIO;
  }
 }
 if (HAS_QUIRK(kbdc, KBDC_QUIRK_SETLEDS_ON_INIT) &&
     send_kbd_command_and_data(kbdc, KBDC_SET_LEDS, 0) != KBD_ACK) {
  printf("atkbd: setleds failed\n");
 }
 if (!ALLOW_DISABLE_KBD(kbdc))
     send_kbd_command(kbdc, KBDC_ENABLE_KBD);


 if (!set_controller_command_byte(kbdc,
  KBD_KBD_CONTROL_BITS | KBD_TRANSLATION | KBD_OVERRIDE_KBD_LOCK,
  (c & (KBD_TRANSLATION | KBD_OVERRIDE_KBD_LOCK))
      | KBD_ENABLE_KBD_PORT | KBD_ENABLE_KBD_INT)) {





  set_controller_command_byte(kbdc, ALLOW_DISABLE_KBD(kbdc)
      ? 0xff : (KBD_KBD_CONTROL_BITS | KBD_TRANSLATION |
   KBD_OVERRIDE_KBD_LOCK), c);
  kbdc_lock(kbdc, FALSE);
  printf("atkbd: unable to enable the keyboard port and intr.\n");
  return EIO;
 }

 kbdc_lock(kbdc, FALSE);
 return 0;
}
