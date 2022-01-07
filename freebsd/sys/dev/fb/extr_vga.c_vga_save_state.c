
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vi_flags; int vi_width; int vi_cwidth; int vi_height; int vi_cheight; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_9__ {int va_crtc_addr; int va_mode; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int u_char ;
struct TYPE_10__ {int* regs; int sig; } ;
typedef TYPE_3__ adp_state_t ;


 int ATC ;
 int BIOS_PADDRTOVADDR (int) ;
 int EINVAL ;
 int ENODEV ;
 int GDCIDX ;
 int GDCREG ;
 int MISC ;
 int TSIDX ;
 int TSREG ;
 int V_ADP_STATESAVE ;
 int V_INFO_GRAPHICS ;
 int V_MODE_PARAM_SIZE ;
 int V_STATE_SIG ;
 int bzero (int*,int ) ;
 int inb (int) ;
 int outb (int,int) ;
 int prologue (TYPE_2__*,int ,int ) ;
 int readb (int ) ;
 int splhigh () ;
 int splx (int) ;
 scalar_t__ vga_get_info (TYPE_2__*,int ,TYPE_1__*) ;

__attribute__((used)) static int
vga_save_state(video_adapter_t *adp, void *p, size_t size)
{
    video_info_t info;
    u_char *buf;
    int crtc_addr;
    int i, j;
    int s;

    if (size == 0) {

 prologue(adp, V_ADP_STATESAVE, 0);
 return sizeof(adp_state_t);
    } else {
 prologue(adp, V_ADP_STATESAVE, ENODEV);
 if (size < sizeof(adp_state_t))
     return EINVAL;
    }

    ((adp_state_t *)p)->sig = V_STATE_SIG;
    buf = ((adp_state_t *)p)->regs;
    bzero(buf, V_MODE_PARAM_SIZE);
    crtc_addr = adp->va_crtc_addr;

    s = splhigh();

    outb(TSIDX, 0x00); outb(TSREG, 0x01);
    for (i = 0, j = 5; i < 4; i++) {
 outb(TSIDX, i + 1);
 buf[j++] = inb(TSREG);
    }
    buf[9] = inb(MISC + 10);
    outb(TSIDX, 0x00); outb(TSREG, 0x03);

    for (i = 0, j = 10; i < 25; i++) {
 outb(crtc_addr, i);
 buf[j++] = inb(crtc_addr + 1);
    }
    for (i = 0, j = 35; i < 20; i++) {
        inb(crtc_addr + 6);
 outb(ATC, i);
 buf[j++] = inb(ATC + 1);
    }
    for (i = 0, j = 55; i < 9; i++) {
 outb(GDCIDX, i);
 buf[j++] = inb(GDCREG);
    }
    inb(crtc_addr + 6);
    outb(ATC, 0x20);

    splx(s);


    if (vga_get_info(adp, adp->va_mode, &info) == 0) {
 if (info.vi_flags & V_INFO_GRAPHICS) {
     buf[0] = info.vi_width/info.vi_cwidth;
     buf[1] = info.vi_height/info.vi_cheight - 1;
 } else {
     buf[0] = info.vi_width;
     buf[1] = info.vi_height - 1;
 }
 buf[2] = info.vi_cheight;
    }
    return 0;
}
