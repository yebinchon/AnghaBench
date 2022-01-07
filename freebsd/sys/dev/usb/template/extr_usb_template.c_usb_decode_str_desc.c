
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_string_descriptor {int bLength; int * bString; } ;


 char UGETW (int ) ;

void
usb_decode_str_desc(struct usb_string_descriptor *sd, char *buf, size_t buflen)
{
 size_t i;

 if (sd->bLength < 2) {
  buf[0] = '\0';
  return;
 }

 for (i = 0; i < buflen - 1 && i < (sd->bLength / 2) - 1; i++)
  buf[i] = UGETW(sd->bString[i]);

 buf[i] = '\0';
}
