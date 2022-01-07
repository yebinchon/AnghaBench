
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int va_flags; } ;
typedef TYPE_1__ video_adapter_t ;


 int ENXIO ;
 int V_ADP_INITIALIZED ;
 int V_ADP_REGISTERED ;
 int biosadapters ;
 int config_done (TYPE_1__*) ;
 int init_done (TYPE_1__*) ;
 int probe_done (TYPE_1__*) ;
 int stub1 (int ) ;
 int vga_sub_configure (int ) ;
 scalar_t__ vid_register (TYPE_1__*) ;

__attribute__((used)) static int
vga_init(int unit, video_adapter_t *adp, int flags)
{
    if ((unit >= biosadapters) || (adp == ((void*)0)) || !probe_done(adp))
 return ENXIO;

    if (!init_done(adp)) {

 adp->va_flags |= V_ADP_INITIALIZED;
    }

    if (!config_done(adp)) {
 if (vid_register(adp) < 0)
  return ENXIO;
 adp->va_flags |= V_ADP_REGISTERED;
    }
    if (vga_sub_configure != ((void*)0))
 (*vga_sub_configure)(0);

    return 0;
}
