
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_rect_t ;
struct vt_window {int dummy; } ;
struct vt_device {int vd_flags; } ;


 int VDF_TEXTMODE ;
 int vga_bitblt_text_gfxmode (struct vt_device*,struct vt_window const*,int const*) ;
 int vga_bitblt_text_txtmode (struct vt_device*,struct vt_window const*,int const*) ;

__attribute__((used)) static void
vga_bitblt_text(struct vt_device *vd, const struct vt_window *vw,
    const term_rect_t *area)
{

 if (!(vd->vd_flags & VDF_TEXTMODE)) {
  vga_bitblt_text_gfxmode(vd, vw, area);
 } else {
  vga_bitblt_text_txtmode(vd, vw, area);
 }
}
