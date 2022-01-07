
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glyph {int dummy; } ;


 unsigned int VFNT_MAP_BOLD ;
 struct glyph* add_glyph (int *,unsigned int,int) ;
 scalar_t__ add_mapping (struct glyph*,unsigned int,unsigned int) ;

__attribute__((used)) static int
add_char(unsigned curchar, unsigned map_idx, uint8_t *bytes, uint8_t *bytes_r)
{
 struct glyph *gl;


 if (curchar == 0xFFFD) {
  if (map_idx < VFNT_MAP_BOLD)
   gl = add_glyph(bytes, 0, 1);
 } else if (curchar >= 0x20) {
  gl = add_glyph(bytes, map_idx, 0);
  if (add_mapping(gl, curchar, map_idx) != 0)
   return (1);
  if (bytes_r != ((void*)0)) {
   gl = add_glyph(bytes_r, map_idx + 1, 0);
   if (add_mapping(gl, curchar, map_idx + 1) != 0)
    return (1);
  }
 }
 return (0);
}
