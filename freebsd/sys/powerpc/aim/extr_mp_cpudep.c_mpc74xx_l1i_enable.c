
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int HID0_ICE ;
 int HID0_ICFI ;
 int SPR_HID0 ;
 int isync () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static register_t
mpc74xx_l1i_enable(void)
{
 register_t hid;

 hid = mfspr(SPR_HID0);
 if (hid & HID0_ICE)
  return (hid);


 hid |= HID0_ICE;
 isync();
 mtspr(SPR_HID0, hid | HID0_ICFI);
 isync();

 return (hid);
}
