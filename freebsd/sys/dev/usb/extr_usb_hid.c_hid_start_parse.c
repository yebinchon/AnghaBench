
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
struct hid_data {int kindset; int const* end; void const* p; void const* start; } ;


 int DPRINTFN (int ,char*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 struct hid_data* malloc (int,int ,int) ;

struct hid_data *
hid_start_parse(const void *d, usb_size_t len, int kindset)
{
 struct hid_data *s;

 if ((kindset-1) & kindset) {
  DPRINTFN(0, "Only one bit can be "
      "set in the kindset\n");
  return (((void*)0));
 }

 s = malloc(sizeof *s, M_TEMP, M_WAITOK | M_ZERO);
 s->start = s->p = d;
 s->end = ((const uint8_t *)d) + len;
 s->kindset = kindset;
 return (s);
}
