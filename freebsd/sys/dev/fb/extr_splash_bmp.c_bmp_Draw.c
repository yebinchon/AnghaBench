
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ va_type; scalar_t__ va_crtc_addr; scalar_t__ va_window; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;
struct TYPE_9__ {int sdepth; int height; int * index; int palette; int * data; scalar_t__ bank; TYPE_1__* adp; int * vidmem; } ;


 int ATC ;
 int GDCIDX ;
 scalar_t__ KD_EGA ;
 scalar_t__ KD_VGA ;
 int TSIDX ;
 int bmp_DecodeLine (TYPE_5__*,int) ;
 TYPE_5__ bmp_info ;
 int inb (scalar_t__) ;
 int outb (int ,int) ;
 int outw (int ,int) ;
 int vidd_clear (TYPE_1__*) ;
 int vidd_load_palette (TYPE_1__*,int *) ;
 int vidd_set_win_org (TYPE_1__*,int ) ;

__attribute__((used)) static int
bmp_Draw(video_adapter_t *adp)
{
    int line;




    if (bmp_info.data == ((void*)0)) {
 return(1);
    }


    bmp_info.vidmem = (u_char *)adp->va_window;
    bmp_info.adp = adp;
    vidd_clear(adp);
    vidd_set_win_org(adp, 0);
    bmp_info.bank = 0;


    bmp_info.index = bmp_info.data;


    vidd_load_palette(adp, (u_char *)&bmp_info.palette);
    for (line = 0; (line < bmp_info.height) && bmp_info.index; line++) {
 bmp_DecodeLine(&bmp_info, line);
    }
    return(0);
}
