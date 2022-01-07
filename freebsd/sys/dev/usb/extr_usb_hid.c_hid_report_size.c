
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_size_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int pos; int size; int count; } ;
struct hid_item {int kind; scalar_t__ report_ID; TYPE_1__ loc; } ;
struct hid_data {int dummy; } ;
typedef enum hid_kind { ____Placeholder_hid_kind } hid_kind ;


 int hid_end_parse (struct hid_data*) ;
 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;
 struct hid_data* hid_start_parse (void const*,int ,int) ;

int
hid_report_size(const void *buf, usb_size_t len, enum hid_kind k, uint8_t *id)
{
 struct hid_data *d;
 struct hid_item h;
 uint32_t temp;
 uint32_t hpos;
 uint32_t lpos;
 uint8_t any_id;

 any_id = 0;
 hpos = 0;
 lpos = 0xFFFFFFFF;

 for (d = hid_start_parse(buf, len, 1 << k); hid_get_item(d, &h);) {
  if (h.kind == k) {

   if ((h.report_ID != 0) && !any_id) {
    if (id != ((void*)0))
     *id = h.report_ID;
    any_id = 1;
   }

   if (lpos > h.loc.pos)
    lpos = h.loc.pos;

   temp = h.loc.pos + (h.loc.size * h.loc.count);

   if (hpos < temp)
    hpos = temp;
  }
 }
 hid_end_parse(d);


 if (lpos > hpos)
  temp = 0;
 else
  temp = hpos - lpos;


 if (any_id)
  temp += 8;
 else if (id != ((void*)0))
  *id = 0;


 return ((temp + 7) / 8);
}
