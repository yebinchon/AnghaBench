
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int ENXIO ;
 int * biosadapter ;
 int biosadapters ;
 int probe_adapters () ;

__attribute__((used)) static int
vga_probe(int unit, video_adapter_t **adpp, void *arg, int flags)
{
    probe_adapters();
    if (unit >= biosadapters)
 return ENXIO;

    *adpp = &biosadapter[unit];

    return 0;
}
