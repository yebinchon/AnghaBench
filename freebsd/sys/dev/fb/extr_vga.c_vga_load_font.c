
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_6__ {scalar_t__ va_type; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ FONT_BUF ;
 scalar_t__ KD_VGA ;
 int PARAM_BUFSIZE ;
 int TSIDX ;
 int TSREG ;
 int V_ADP_FONT ;
 int bcopy_toio (int*,uintptr_t,int) ;
 int inb (int ) ;
 int outb (int ,int) ;
 int prologue (TYPE_1__*,int ,int) ;
 int set_font_mode (TYPE_1__*,int*) ;
 int set_normal_mode (TYPE_1__*,int*) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static int
vga_load_font(video_adapter_t *adp, int page, int fontsize, int fontwidth,
       u_char *data, int ch, int count)
{

    u_char buf[PARAM_BUFSIZE];
    vm_offset_t segment;
    int c;





    prologue(adp, V_ADP_FONT, ENODEV);

    if (fontsize < 14) {

 fontsize = 8;
    } else if (fontsize >= 32) {
 fontsize = 32;
    } else if (fontsize >= 16) {

 fontsize = 16;
    } else {

 fontsize = 14;
    }

    if (page < 0 || page >= 8 || fontwidth != 8)
 return EINVAL;
    segment = FONT_BUF + 0x4000*page;
    if (page > 3)
 segment -= 0xe000;
    set_font_mode(adp, buf);
    if (fontsize == 32) {
 bcopy_toio(data, (uintptr_t)segment + ch*32, fontsize*count);
    } else {
 for (c = ch; count > 0; ++c, --count) {
     bcopy_toio(data, (uintptr_t)segment + c*32, fontsize);
     data += fontsize;
 }
    }
    set_normal_mode(adp, buf);
    return 0;



}
