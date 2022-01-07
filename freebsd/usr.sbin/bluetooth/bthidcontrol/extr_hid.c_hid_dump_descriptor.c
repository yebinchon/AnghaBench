
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_item {int kind; int usage; } ;
struct hid_data {int dummy; } ;
typedef int report_desc_t ;


 int HID_PAGE (int ) ;
 int fprintf (int ,char*,...) ;

 int hid_dump_item (char*,struct hid_item*) ;
 int hid_end_parse (struct hid_data*) ;


 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;


 struct hid_data* hid_start_parse (int ,int ,int) ;
 char* hid_usage_in_page (int ) ;
 char* hid_usage_page (int ) ;
 int stdout ;

__attribute__((used)) static void
hid_dump_descriptor(report_desc_t r)
{
 struct hid_data *d = ((void*)0);
 struct hid_item h;

 for (d = hid_start_parse(r, ~0, -1); hid_get_item(d, &h); ) {
  switch (h.kind) {
  case 132:
   fprintf(stdout,
"Collection page=%s usage=%s\n", hid_usage_page(HID_PAGE(h.usage)),
     hid_usage_in_page(h.usage));
   break;

  case 131:
   fprintf(stdout, "End collection\n");
   break;

  case 129:
   hid_dump_item("Input  ", &h);
   break;

  case 128:
   hid_dump_item("Output ", &h);
   break;

  case 130:
   hid_dump_item("Feature", &h);
   break;
  }
 }

 hid_end_parse(d);
}
