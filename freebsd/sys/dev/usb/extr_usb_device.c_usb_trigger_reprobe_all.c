
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_MS_TO_TICKS (int ) ;
 int USB_POWER_DOWN_TIME ;
 int usb_pause_mtx (int *,int ) ;
 int usb_trigger_reprobe_on_off (int) ;

__attribute__((used)) static void
usb_trigger_reprobe_all(void)
{




 usb_trigger_reprobe_on_off(0);




 usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(USB_POWER_DOWN_TIME));




 usb_trigger_reprobe_on_off(1);
}
