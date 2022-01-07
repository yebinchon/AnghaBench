
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int HID_USAGE2 (int ,int ) ;
 int HUG_KEYBOARD ;
 int HUP_GENERIC_DESKTOP ;
 scalar_t__ hid_is_collection (void const*,int ,int ) ;

int
hid_is_keyboard(const void *d_ptr, uint16_t d_len)
{
 if (hid_is_collection(d_ptr, d_len,
     HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_KEYBOARD)))
  return (1);
 return (0);
}
