
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct hid_item {int pos; int report_count; scalar_t__ logical_minimum; scalar_t__ report_size; } ;


 scalar_t__ hexdump ;
 int hid_get_data (int *,struct hid_item*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
prdata(u_char *buf, struct hid_item *h)
{
 u_int data;
 int i, pos;

 pos = h->pos;
 for (i = 0; i < h->report_count; i++) {
  data = hid_get_data(buf, h);
  if (i > 0)
   printf(" ");
  if (h->logical_minimum < 0)
   printf("%d", (int)data);
  else
   printf("%u", data);
                if (hexdump)
   printf(" [0x%x]", data);
  h->pos += h->report_size;
 }
 h->pos = pos;
}
