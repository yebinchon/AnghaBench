
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int vd_flags; int vd_width; int vd_height; int * vd_video_dev; struct vga_softc* vd_softc; } ;
struct vga_softc {int vga_enabled; int vga_fb_handle; int vga_fb_tag; int vga_reg_handle; int vga_reg_tag; } ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int VDF_DOWNGRADE ;
 int VDF_TEXTMODE ;
 int VGA_MEM_BASE ;
 int VGA_MEM_SIZE ;
 int VGA_REG_BASE ;
 int VGA_REG_SIZE ;
 int VGA_TXT_BASE ;
 int VGA_TXT_SIZE ;
 scalar_t__ VM_GUEST_NO ;
 int VT_VGA_HEIGHT ;
 int VT_VGA_WIDTH ;
 int X86_BUS_SPACE_IO ;
 int X86_BUS_SPACE_MEM ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int vga_conssoftc ;
 scalar_t__ vga_initialize (struct vt_device*,int) ;
 int vga_pci_repost (int *) ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
vga_init(struct vt_device *vd)
{
 struct vga_softc *sc;
 int textmode;

 if (vd->vd_softc == ((void*)0))
  vd->vd_softc = (void *)&vga_conssoftc;
 sc = vd->vd_softc;

 if (vd->vd_flags & VDF_DOWNGRADE && vd->vd_video_dev != ((void*)0))
  vga_pci_repost(vd->vd_video_dev);


 sc->vga_fb_tag = X86_BUS_SPACE_MEM;
 sc->vga_reg_tag = X86_BUS_SPACE_IO;




 bus_space_map(sc->vga_reg_tag, VGA_REG_BASE, VGA_REG_SIZE, 0,
     &sc->vga_reg_handle);







 textmode = vm_guest != VM_GUEST_NO;
 TUNABLE_INT_FETCH("hw.vga.textmode", &textmode);
 if (textmode) {
  vd->vd_flags |= VDF_TEXTMODE;
  vd->vd_width = 80;
  vd->vd_height = 25;
  bus_space_map(sc->vga_fb_tag, VGA_TXT_BASE, VGA_TXT_SIZE, 0,
      &sc->vga_fb_handle);
 } else {
  vd->vd_width = VT_VGA_WIDTH;
  vd->vd_height = VT_VGA_HEIGHT;
  bus_space_map(sc->vga_fb_tag, VGA_MEM_BASE, VGA_MEM_SIZE, 0,
      &sc->vga_fb_handle);
 }
 if (vga_initialize(vd, textmode) != 0)
  return (CN_DEAD);
 sc->vga_enabled = 1;

 return (CN_INTERNAL);
}
