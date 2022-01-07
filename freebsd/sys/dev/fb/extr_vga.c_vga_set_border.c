
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_type; int va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;


 int ATC ;
 int ENODEV ;





 int V_ADP_BORDER ;
 int inb (int ) ;
 int outb (int ,int) ;
 int prologue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
vga_set_border(video_adapter_t *adp, int color)
{
    prologue(adp, V_ADP_BORDER, ENODEV);

    switch (adp->va_type) {
    case 131:
    case 128:
 inb(adp->va_crtc_addr + 6);
 outb(ATC, 0x31); outb(ATC, color & 0xff);
 break;
    case 132:
 outb(adp->va_crtc_addr + 5, color & 0x0f);
 break;
    case 129:
    case 130:
    default:
 break;
    }
    return 0;
}
