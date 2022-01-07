
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct hid_location {int pos; int size; } ;


 int DPRINTFN (int,char*,int,int,unsigned int) ;

void
hid_put_data_unsigned(uint8_t *buf, usb_size_t len,
    struct hid_location *loc, unsigned int value)
{
 uint32_t hpos = loc->pos;
 uint32_t hsize = loc->size;
 uint64_t data;
 uint64_t mask;
 uint32_t rpos;
 uint8_t n;

 DPRINTFN(11, "hid_put_data: loc %d/%d = %u\n", hpos, hsize, value);


 if (hsize == 0)
  return;
 if (hsize > 32)
  hsize = 32;


 rpos = (hpos / 8);
 n = (hsize + 7) / 8;
 data = ((uint64_t)value) << (hpos % 8);
 mask = ((1ULL << hsize) - 1ULL) << (hpos % 8);
 rpos += n;
 while (n--) {
  rpos--;
  if (rpos < len) {
   buf[rpos] &= ~(mask >> (8 * n));
   buf[rpos] |= (data >> (8 * n));
  }
 }
}
