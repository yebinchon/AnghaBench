
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
struct hid_location {int dummy; } ;
typedef int int32_t ;


 int hid_get_data_sub (int const*,int ,struct hid_location*,int) ;

int32_t
hid_get_data(const uint8_t *buf, usb_size_t len, struct hid_location *loc)
{
 return (hid_get_data_sub(buf, len, loc, 1));
}
