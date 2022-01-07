
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;



__attribute__((used)) static void
vga_compute_shifted_pattern(const uint8_t *src, unsigned int bytes,
    unsigned int src_x, unsigned int x_count, unsigned int dst_x,
    uint8_t *pattern, uint8_t *mask)
{
 unsigned int n;

 n = src_x / 8;





 if (mask != ((void*)0)) {
  *mask = (0xff
      >> (8 - x_count))
      << (8 - x_count - dst_x);
 }

 if (n == (src_x + x_count - 1) / 8) {

  *pattern = src[n];
  if (dst_x >= src_x)
   *pattern >>= (dst_x - src_x % 8);
  else
   *pattern <<= (src_x % 8 - dst_x);
 } else {

  if (dst_x >= src_x % 8) {
   *pattern =
       src[n] << (8 - dst_x - src_x % 8) |
       src[n + 1] >> (dst_x - src_x % 8);
  } else {
   *pattern =
       src[n] << (src_x % 8 - dst_x) |
       src[n + 1] >> (8 - src_x % 8 - dst_x);
  }
 }
}
