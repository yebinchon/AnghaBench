
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int va_flags; int va_mode; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;
struct TYPE_7__ {int (* save_palette ) (TYPE_1__*,int *) ;} ;


 scalar_t__ VESA_MODE (int ) ;
 int V_ADP_DAC8 ;
 TYPE_5__* prevvidsw ;
 int stub1 (TYPE_1__*,int *) ;
 TYPE_1__* vesa_adp ;
 scalar_t__ vesa_bios_save_palette (int ,int,int *,int) ;

__attribute__((used)) static int
vesa_save_palette(video_adapter_t *adp, u_char *palette)
{
 int bits;

 if (adp == vesa_adp && VESA_MODE(adp->va_mode)) {
  bits = (adp->va_flags & V_ADP_DAC8) != 0 ? 8 : 6;
  if (vesa_bios_save_palette(0, 256, palette, bits) == 0)
   return (0);
 }

 return ((*prevvidsw->save_palette)(adp, palette));
}
