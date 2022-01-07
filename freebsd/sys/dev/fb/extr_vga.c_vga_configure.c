
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int va_flags; } ;


 int V_ADP_INITIALIZED ;
 int V_ADP_REGISTERED ;
 TYPE_1__* biosadapter ;
 int biosadapters ;
 int config_done (TYPE_1__*) ;
 int probe_adapters () ;
 int probe_done (TYPE_1__*) ;
 int stub1 (int) ;
 int vga_sub_configure (int) ;
 scalar_t__ vid_register (TYPE_1__*) ;

__attribute__((used)) static int
vga_configure(int flags)
{
    int i;

    probe_adapters();
    for (i = 0; i < biosadapters; ++i) {
 if (!probe_done(&biosadapter[i]))
     continue;
 biosadapter[i].va_flags |= V_ADP_INITIALIZED;
 if (!config_done(&biosadapter[i])) {
     if (vid_register(&biosadapter[i]) < 0)
  continue;
     biosadapter[i].va_flags |= V_ADP_REGISTERED;
 }
    }
    if (vga_sub_configure != ((void*)0))
 (*vga_sub_configure)(flags);

    return biosadapters;
}
