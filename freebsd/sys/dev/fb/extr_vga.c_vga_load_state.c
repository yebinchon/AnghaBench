
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int va_crtc_addr; scalar_t__ va_unit; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;
struct TYPE_6__ {scalar_t__ sig; int* regs; } ;
typedef TYPE_2__ adp_state_t ;


 int ATC ;
 int BIOS_PADDRTOVADDR (int) ;
 int EINVAL ;
 int ENODEV ;
 int GDCIDX ;
 int GDCREG ;
 int MISC ;
 int TSIDX ;
 int TSREG ;
 scalar_t__ V_ADP_PRIMARY ;
 int V_ADP_STATELOAD ;
 int V_MODE_PARAM_SIZE ;
 scalar_t__ V_STATE_SIG ;
 int dump_buffer (int*,int ) ;
 int inb (int) ;
 int outb (int,int) ;
 int prologue (TYPE_1__*,int ,int ) ;
 int rows_offset ;
 int splhigh () ;
 int splx (int) ;
 int writeb (int ,int) ;

__attribute__((used)) static int
vga_load_state(video_adapter_t *adp, void *p)
{
    u_char *buf;
    int crtc_addr;
    int s;
    int i;

    prologue(adp, V_ADP_STATELOAD, ENODEV);
    if (((adp_state_t *)p)->sig != V_STATE_SIG)
 return EINVAL;

    buf = ((adp_state_t *)p)->regs;
    crtc_addr = adp->va_crtc_addr;





    s = splhigh();

    outb(TSIDX, 0x00); outb(TSREG, 0x01);
    for (i = 0; i < 4; ++i) {
 outb(TSIDX, i + 1);
 outb(TSREG, buf[i + 5]);
    }
    outb(MISC, buf[9]);
    outb(TSIDX, 0x00); outb(TSREG, 0x03);
    outb(crtc_addr, 0x11);
    outb(crtc_addr + 1, inb(crtc_addr + 1) & 0x7F);
    for (i = 0; i < 25; ++i) {
 outb(crtc_addr, i);
 outb(crtc_addr + 1, buf[i + 10]);
    }
    inb(crtc_addr+6);
    for (i = 0; i < 20; ++i) {
 outb(ATC, i);
 outb(ATC, buf[i + 35]);
    }
    for (i = 0; i < 9; ++i) {
 outb(GDCIDX, i);
 outb(GDCREG, buf[i + 55]);
    }
    inb(crtc_addr + 6);
    outb(ATC, 0x20);
    splx(s);
    return 0;
}
