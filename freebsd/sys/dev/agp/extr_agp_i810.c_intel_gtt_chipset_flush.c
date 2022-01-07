
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int agp_intel_gtt_chipset_flush (int ) ;
 int intel_agp ;

int
intel_gtt_chipset_flush(void)
{

 return (agp_intel_gtt_chipset_flush(intel_agp));
}
