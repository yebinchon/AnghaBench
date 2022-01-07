
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_flags; scalar_t__ va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int ATC ;
 int ENODEV ;
 int PALDATA ;
 int PALWADR ;
 int PIXMASK ;
 int V_ADP_DAC8 ;
 int V_ADP_PALETTE ;
 int inb (scalar_t__) ;
 int outb (int ,int) ;
 int prologue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
vga_load_palette(video_adapter_t *adp, u_char *palette)
{
    int bits;
    int i;

    prologue(adp, V_ADP_PALETTE, ENODEV);

    outb(PIXMASK, 0xff);
    outb(PALWADR, 0x00);
    bits = (adp->va_flags & V_ADP_DAC8) != 0 ? 0 : 2;
    for (i = 0; i < 256*3; ++i)
 outb(PALDATA, palette[i] >> bits);
    inb(adp->va_crtc_addr + 6);
    outb(ATC, 0x20);
    return 0;
}
