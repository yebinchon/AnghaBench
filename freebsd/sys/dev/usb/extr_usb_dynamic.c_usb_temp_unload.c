
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int pause (char*,int ) ;
 int * usb_temp_get_desc_p ;
 int usb_temp_get_desc_w ;
 int * usb_temp_setup_by_index_p ;
 int usb_temp_setup_by_index_w ;
 int * usb_temp_unsetup_p ;
 int usb_temp_unsetup_w ;

void
usb_temp_unload(void *arg)
{


 usb_temp_get_desc_p = &usb_temp_get_desc_w;
 usb_temp_setup_by_index_p = &usb_temp_setup_by_index_w;
 usb_temp_unsetup_p = &usb_temp_unsetup_w;





 pause("WAIT", hz);
}
