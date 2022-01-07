
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
struct hid_item {scalar_t__ kind; scalar_t__ usage; } ;
struct hid_data {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ hid_collection ;
 int hid_end_parse (struct hid_data*) ;
 int hid_get_item (struct hid_data*,struct hid_item*) ;
 int hid_input ;
 struct hid_data* hid_start_parse (void const*,int ,int ) ;

int
hid_is_collection(const void *desc, usb_size_t size, int32_t usage)
{
 struct hid_data *hd;
 struct hid_item hi;
 int err;

 hd = hid_start_parse(desc, size, hid_input);
 if (hd == ((void*)0))
  return (0);

 while ((err = hid_get_item(hd, &hi))) {
   if (hi.kind == hid_collection &&
       hi.usage == usage)
   break;
 }
 hid_end_parse(hd);
 return (err);
}
