
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_item {int kind; int usage; int collection; } ;
struct hid_data {int dummy; } ;
typedef int report_desc_t ;


 int HID_PAGE (int ) ;
 int dumpitem (char*,struct hid_item*) ;

 char* hid_collection_type (int ) ;
 int hid_end_parse (struct hid_data*) ;


 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;


 int hid_report_size (int ,int const,int) ;
 struct hid_data* hid_start_parse (int ,int ,int) ;
 char* hid_usage_in_page (int ) ;
 char* hid_usage_page (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dumpitems(report_desc_t r)
{
 struct hid_data *d;
 struct hid_item h;
 int size;

 for (d = hid_start_parse(r, ~0, -1); hid_get_item(d, &h); ) {
  switch (h.kind) {
  case 132:
   printf("Collection type=%s page=%s usage=%s\n",
          hid_collection_type(h.collection),
          hid_usage_page(HID_PAGE(h.usage)),
          hid_usage_in_page(h.usage));
   break;
  case 131:
   printf("End collection\n");
   break;
  case 129:
   dumpitem("Input  ", &h);
   break;
  case 128:
   dumpitem("Output ", &h);
   break;
  case 130:
   dumpitem("Feature", &h);
   break;
  }
 }
 hid_end_parse(d);
 size = hid_report_size(r, 129, -1);
 printf("Total   input size %d bytes\n", size);

 size = hid_report_size(r, 128, -1);
 printf("Total  output size %d bytes\n", size);

 size = hid_report_size(r, 130, -1);
 printf("Total feature size %d bytes\n", size);
}
