
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_char ;


 int EINVAL ;
 int ENODEV ;
 int TSIDX ;
 int TSREG ;
 int V_ADP_FONT ;
 int outb (int ,int) ;
 int prologue (int *,int ,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static int
vga_show_font(video_adapter_t *adp, int page)
{

    static u_char cg[] = { 0x00, 0x05, 0x0a, 0x0f, 0x30, 0x35, 0x3a, 0x3f };
    int s;

    prologue(adp, V_ADP_FONT, ENODEV);
    if (page < 0 || page >= 8)
 return EINVAL;

    s = splhigh();
    outb(TSIDX, 0x03); outb(TSREG, cg[page]);
    splx(s);

    return 0;



}
