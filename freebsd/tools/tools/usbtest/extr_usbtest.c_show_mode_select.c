
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int show_device_select (int ) ;
 int show_host_select (int ) ;
 int usb_ts_show_menu (int,char*,char*) ;

__attribute__((used)) static void
show_mode_select(uint8_t level)
{
 uint8_t retval;

 while (1) {

  retval = usb_ts_show_menu(level, "Select Computer Mode",
      "1) This computer is Running the Device Side\n"
      "2) This computer is Running the Host Side\n"
      "x) Return to previous menu\n");

  switch (retval) {
  case 0:
   break;
  case 1:
   show_device_select(level + 1);
   break;
  case 2:
   show_host_select(level + 1);
   break;
  default:
   return;
  }
 }
}
