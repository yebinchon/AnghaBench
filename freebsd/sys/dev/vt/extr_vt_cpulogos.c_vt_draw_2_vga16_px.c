
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vt_axis_t ;
struct vt_device {TYPE_1__* vd_driver; } ;
struct TYPE_2__ {int (* vd_setpixel ) (struct vt_device*,scalar_t__,scalar_t__,int ) ;} ;


 int stub1 (struct vt_device*,scalar_t__,scalar_t__,int ) ;
 int stub2 (struct vt_device*,scalar_t__,scalar_t__,int ) ;
 int vt_vga2bsd (unsigned char) ;

__attribute__((used)) static void
vt_draw_2_vga16_px(struct vt_device *vd, vt_axis_t x, vt_axis_t y,
    unsigned char color)
{

 vd->vd_driver->vd_setpixel(vd, x, y, vt_vga2bsd(color >> 4));
 vd->vd_driver->vd_setpixel(vd, x + 1, y, vt_vga2bsd(color & 0xf));
}
