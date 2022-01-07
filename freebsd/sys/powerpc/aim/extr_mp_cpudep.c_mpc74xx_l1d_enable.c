
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int HID0_DCE ;
 int HID0_DCFI ;
 int SPR_HID0 ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int powerpc_sync () ;

__attribute__((used)) static register_t
mpc74xx_l1d_enable(void)
{
 register_t hid;

 hid = mfspr(SPR_HID0);
 if (hid & HID0_DCE)
  return (hid);


 hid |= HID0_DCE;
 powerpc_sync();
 mtspr(SPR_HID0, hid | HID0_DCFI);
 powerpc_sync();

 return (hid);
}
