
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_string_descriptor {int bLength; int * bString; int bDescriptorType; } ;


 int UDESC_STRING ;
 int USETW2 (int ,int ,char const) ;
 int strlen (char const*) ;

uint8_t
usb_make_str_desc(void *ptr, uint16_t max_len, const char *s)
{
 struct usb_string_descriptor *p = ptr;
 uint8_t totlen;
 int j;

 if (max_len < 2) {

  return (0);
 }
 max_len = ((max_len / 2) - 1);

 j = strlen(s);

 if (j < 0) {
  j = 0;
 }
 if (j > 126) {
  j = 126;
 }
 if (max_len > j) {
  max_len = j;
 }
 totlen = (max_len + 1) * 2;

 p->bLength = totlen;
 p->bDescriptorType = UDESC_STRING;

 while (max_len--) {
  USETW2(p->bString[max_len], 0, s[max_len]);
 }
 return (totlen);
}
