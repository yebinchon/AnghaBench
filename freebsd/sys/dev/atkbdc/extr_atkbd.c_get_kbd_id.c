
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int DELAY (int) ;
 int KBDC_SEND_DEV_ID ;
 scalar_t__ KBD_ACK ;
 int empty_both_buffers (int ,int) ;
 int read_kbd_data (int ) ;
 scalar_t__ send_kbd_command (int ,int ) ;
 int test_controller (int ) ;
 int test_kbd_port (int ) ;

__attribute__((used)) static int
get_kbd_id(KBDC kbdc)
{
 int id1, id2;

 empty_both_buffers(kbdc, 10);
 id1 = id2 = -1;
 if (send_kbd_command(kbdc, KBDC_SEND_DEV_ID) != KBD_ACK)
  return -1;

 DELAY(10000);
 id1 = read_kbd_data(kbdc);
 if (id1 != -1)
  id2 = read_kbd_data(kbdc);

 if ((id1 == -1) || (id2 == -1)) {
  empty_both_buffers(kbdc, 10);
  test_controller(kbdc);
  test_kbd_port(kbdc);
  return -1;
 }
 return ((id2 << 8) | id1);
}
