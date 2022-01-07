
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usb_temp_get_desc ;
 int * usb_temp_get_desc_p ;
 int usb_temp_setup_by_index ;
 int * usb_temp_setup_by_index_p ;
 int usb_temp_unsetup ;
 int * usb_temp_unsetup_p ;

__attribute__((used)) static void
usb_temp_init(void *arg)
{

 usb_temp_get_desc_p = &usb_temp_get_desc;
 usb_temp_setup_by_index_p = &usb_temp_setup_by_index;
 usb_temp_unsetup_p = &usb_temp_unsetup;
}
