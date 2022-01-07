
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct hid_item {int kind; int collection; int flags; int usage; } ;
struct hid_data {int dummy; } ;


 int HID_USAGE2 (int ,int ) ;
 int HIO_CONST ;
 int HIO_RELATIVE ;
 int HUG_MOUSE ;
 int HUG_X ;
 int HUG_Y ;
 int HUP_GENERIC_DESKTOP ;

 int hid_end_parse (struct hid_data*) ;

 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;

 struct hid_data* hid_start_parse (void const*,int ,int) ;

int
hid_is_mouse(const void *d_ptr, uint16_t d_len)
{
 struct hid_data *hd;
 struct hid_item hi;
 int mdepth;
 int found;

 hd = hid_start_parse(d_ptr, d_len, 1 << 128);
 if (hd == ((void*)0))
  return (0);

 mdepth = 0;
 found = 0;

 while (hid_get_item(hd, &hi)) {
  switch (hi.kind) {
  case 130:
   if (mdepth != 0)
    mdepth++;
   else if (hi.collection == 1 &&
        hi.usage ==
         HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_MOUSE))
    mdepth++;
   break;
  case 129:
   if (mdepth != 0)
    mdepth--;
   break;
  case 128:
   if (mdepth == 0)
    break;
   if (hi.usage ==
        HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_X) &&
       (hi.flags & (HIO_CONST|HIO_RELATIVE)) == HIO_RELATIVE)
    found++;
   if (hi.usage ==
        HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_Y) &&
       (hi.flags & (HIO_CONST|HIO_RELATIVE)) == HIO_RELATIVE)
    found++;
   break;
  default:
   break;
  }
 }
 hid_end_parse(hd);
 return (found);
}
