
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
typedef int term_char_t ;
struct vt_font {size_t vf_height; int const* vf_bytes; int vf_width; int * vf_map_count; int * vf_map; } ;


 int TCHAR_CHARACTER (int ) ;
 int TCHAR_FORMAT (int ) ;
 int TF_BOLD ;
 int TF_CJK_RIGHT ;
 unsigned int VFNT_MAP_BOLD ;
 unsigned int VFNT_MAP_BOLD_RIGHT ;
 unsigned int VFNT_MAP_NORMAL ;
 unsigned int VFNT_MAP_NORMAL_RIGHT ;
 size_t howmany (int ,int) ;
 size_t vtfont_bisearch (int ,int ,int ) ;

const uint8_t *
vtfont_lookup(const struct vt_font *vf, term_char_t c)
{
 uint32_t src;
 uint16_t dst;
 size_t stride;
 unsigned int normal_map;
 unsigned int bold_map;

 src = TCHAR_CHARACTER(c);
 if (TCHAR_FORMAT(c) & TF_CJK_RIGHT) {
  normal_map = VFNT_MAP_NORMAL_RIGHT;
  bold_map = VFNT_MAP_BOLD_RIGHT;
 } else {
  normal_map = VFNT_MAP_NORMAL;
  bold_map = VFNT_MAP_BOLD;
 }

 if (TCHAR_FORMAT(c) & TF_BOLD) {
  dst = vtfont_bisearch(vf->vf_map[bold_map],
      vf->vf_map_count[bold_map], src);
  if (dst != 0)
   goto found;
 }
 dst = vtfont_bisearch(vf->vf_map[normal_map],
     vf->vf_map_count[normal_map], src);

found:
 stride = howmany(vf->vf_width, 8) * vf->vf_height;
 return (&vf->vf_bytes[dst * stride]);
}
