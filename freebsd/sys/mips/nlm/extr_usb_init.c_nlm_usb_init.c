
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_usb_hw_reset (int ,int) ;
 int nlm_usb_intr_en (int ,int) ;
 int printf (char*) ;

__attribute__((used)) static void
nlm_usb_init(void)
{

 printf("Initialize USB Interface\n");
 nlm_usb_hw_reset(0, 0);
 nlm_usb_hw_reset(0, 3);


 nlm_usb_intr_en(0, 0);
 nlm_usb_intr_en(0, 3);
}
