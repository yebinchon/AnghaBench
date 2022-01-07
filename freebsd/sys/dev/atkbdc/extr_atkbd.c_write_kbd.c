
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int EBUSY ;
 int EIO ;
 int FALSE ;
 int KBDC_ENABLE_KBD ;
 scalar_t__ KBD_ACK ;
 int KBD_AUX_CONTROL_BITS ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int TRUE ;
 int c ;
 int get_controller_command_byte (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int send_kbd_command (int ,int ) ;
 scalar_t__ send_kbd_command_and_data (int ,int,int) ;
 int set_controller_command_byte (int ,int ,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
write_kbd(KBDC kbdc, int command, int data)
{
 int s;


 if (!kbdc_lock(kbdc, TRUE))
  return EBUSY;


 s = spltty();
 if (send_kbd_command_and_data(kbdc, command, data) != KBD_ACK)
  send_kbd_command(kbdc, KBDC_ENABLE_KBD);







 splx(s);

 kbdc_lock(kbdc, FALSE);

 return 0;
}
