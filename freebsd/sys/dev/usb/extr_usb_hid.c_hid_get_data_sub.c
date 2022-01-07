
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct hid_location {int pos; int size; } ;
typedef int int32_t ;


 int DPRINTFN (int,char*,int,int,...) ;

__attribute__((used)) static uint32_t
hid_get_data_sub(const uint8_t *buf, usb_size_t len, struct hid_location *loc,
    int is_signed)
{
 uint32_t hpos = loc->pos;
 uint32_t hsize = loc->size;
 uint32_t data;
 uint32_t rpos;
 uint8_t n;

 DPRINTFN(11, "hid_get_data: loc %d/%d\n", hpos, hsize);


 if (hsize == 0)
  return (0);
 if (hsize > 32)
  hsize = 32;


 data = 0;
 rpos = (hpos / 8);
 n = (hsize + 7) / 8;
 rpos += n;
 while (n--) {
  rpos--;
  if (rpos < len)
   data |= buf[rpos] << (8 * n);
 }


 data = (data >> (hpos % 8));
 n = 32 - hsize;


 if (is_signed != 0)
  data = (int32_t)((int32_t)data << n) >> n;
 else
  data = (uint32_t)((uint32_t)data << n) >> n;

 DPRINTFN(11, "hid_get_data: loc %d/%d = %lu\n",
     loc->pos, loc->size, (long)data);
 return (data);
}
