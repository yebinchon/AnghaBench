
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t KEY_INDEX (int) ;
 int MOD_ALT_L ;
 int MOD_ALT_R ;
 int* ukbd_trtab ;

__attribute__((used)) static uint32_t
ukbd_atkeycode(int usbcode, int shift)
{
 uint32_t keycode;

 keycode = ukbd_trtab[KEY_INDEX(usbcode)];
 if ((keycode == 0x5c || keycode == 0x7e) &&
     shift & (MOD_ALT_L | MOD_ALT_R))
  return (0x54);
 return (keycode);
}
