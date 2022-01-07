
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int vd_flags; } ;


 int VDF_INVALID ;
 int VDF_TEXTMODE ;
 int vga_initialize (struct vt_device*,int) ;

__attribute__((used)) static void
vga_postswitch(struct vt_device *vd)
{


 vga_initialize(vd, (vd->vd_flags & VDF_TEXTMODE));

 vd->vd_flags |= VDF_INVALID;
}
