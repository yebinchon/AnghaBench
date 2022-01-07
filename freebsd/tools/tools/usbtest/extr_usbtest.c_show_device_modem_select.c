
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int show_default_modem_select (int ) ;
 int usb_ts_show_menu (int,char*,char*) ;

__attribute__((used)) static void
show_device_modem_select(uint8_t level)
{
 uint8_t retval;

 while (1) {

  retval = usb_ts_show_menu(level, "Select Modem Model",
      "1) Generic Modem\n"
      "x) Return to previous menu\n");

  switch (retval) {
  case 0:
   break;
  case 1:
   show_default_modem_select(level + 1);
   break;
  default:
   return;
  }
 }
}
