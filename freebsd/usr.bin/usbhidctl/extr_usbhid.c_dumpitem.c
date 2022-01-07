
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_item {int flags; int report_ID; int pos; int report_size; int report_count; int logical_minimum; int logical_maximum; int physical_minimum; int physical_maximum; int unit; int unit_exponent; int usage; } ;


 int HID_PAGE (int ) ;
 int HIO_CONST ;
 int HIO_VARIABLE ;
 char* hid_usage_in_page (int ) ;
 char* hid_usage_page (int ) ;
 int printf (char*,...) ;
 int verbose ;

__attribute__((used)) static void
dumpitem(const char *label, struct hid_item *h)
{
 if ((h->flags & HIO_CONST) && !verbose)
  return;
 printf("%s rid=%d pos=%d size=%d count=%d page=%s usage=%s%s%s", label,
        h->report_ID, h->pos, h->report_size, h->report_count,
        hid_usage_page(HID_PAGE(h->usage)),
        hid_usage_in_page(h->usage),
        h->flags & HIO_CONST ? " Const" : "",
        h->flags & HIO_VARIABLE ? "" : " Array");
 printf(", logical range %d..%d",
        h->logical_minimum, h->logical_maximum);
 if (h->physical_minimum != h->physical_maximum)
  printf(", physical range %d..%d",
         h->physical_minimum, h->physical_maximum);
 if (h->unit)
  printf(", unit=0x%02x exp=%d", h->unit, h->unit_exponent);
 printf("\n");
}
