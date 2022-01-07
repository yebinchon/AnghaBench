
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_flags; scalar_t__ va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int ENODEV ;
 scalar_t__ PALDATA ;
 int PALRADR ;
 int V_ADP_DAC8 ;
 int V_ADP_PALETTE ;
 int inb (scalar_t__) ;
 int outb (int ,int) ;
 int prologue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
vga_save_palette2(video_adapter_t *adp, int base, int count,
    u_char *r, u_char *g, u_char *b)
{
    int bits;
    int i;

    prologue(adp, V_ADP_PALETTE, ENODEV);

    outb(PALRADR, base);
    bits = (adp->va_flags & V_ADP_DAC8) != 0 ? 0 : 2;
    for (i = 0; i < count; ++i) {
 r[i] = inb(PALDATA) << bits;
 g[i] = inb(PALDATA) << bits;
 b[i] = inb(PALDATA) << bits;
    }
    inb(adp->va_crtc_addr + 6);
    return 0;
}
