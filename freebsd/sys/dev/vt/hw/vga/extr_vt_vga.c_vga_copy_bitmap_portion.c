
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int term_color_t ;


 int vga_compute_shifted_pattern (int const*,unsigned int,unsigned int,unsigned int,unsigned int,int*,int*) ;

__attribute__((used)) static void
vga_copy_bitmap_portion(uint8_t *pattern_2colors, uint8_t *pattern_ncolors,
    const uint8_t *src, const uint8_t *src_mask, unsigned int src_width,
    unsigned int src_x, unsigned int dst_x, unsigned int x_count,
    unsigned int src_y, unsigned int dst_y, unsigned int y_count,
    term_color_t fg, term_color_t bg, int overwrite)
{
 unsigned int i, bytes;
 uint8_t pattern, relevant_bits, mask;

 bytes = (src_width + 7) / 8;

 for (i = 0; i < y_count; ++i) {
  vga_compute_shifted_pattern(src + (src_y + i) * bytes,
      bytes, src_x, x_count, dst_x, &pattern, &relevant_bits);

  if (src_mask == ((void*)0)) {




   mask = relevant_bits;
  } else {




   vga_compute_shifted_pattern(
       src_mask + (src_y + i) * bytes,
       bytes, src_x, x_count, dst_x,
       &mask, ((void*)0));


   mask &= relevant_bits;
  }





  pattern &= mask;


  if (overwrite)
   pattern_2colors[dst_y + i] &= ~mask;
  pattern_2colors[dst_y + i] |= pattern;

  if (pattern_ncolors == ((void*)0))
   continue;






  if (overwrite) {




   for (int j = 0; j < 16; ++j)
    pattern_ncolors[(dst_y + i) * 16 + j] &=
        ~mask;
  }
  pattern_ncolors[(dst_y + i) * 16 + fg] |= pattern;
  pattern_ncolors[(dst_y + i) * 16 + bg] |= (~pattern & mask);
 }
}
