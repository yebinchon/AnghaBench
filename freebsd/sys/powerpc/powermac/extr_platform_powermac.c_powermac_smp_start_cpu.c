
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pcpu {int pc_cpuid; scalar_t__ pc_awake; int pc_hwref; } ;
typedef int reset ;
typedef int platform_t ;
typedef int phandle_t ;


 int DELAY (int) ;
 int EBUSY ;
 int ENXIO ;
 int OF_getprop (int ,char*,int*,int) ;
 int PAGE_SIZE ;
 struct pcpu* ap_pcpu ;
 int* pmap_mapdev (int,int ) ;
 int powerpc_sync () ;

__attribute__((used)) static int
powermac_smp_start_cpu(platform_t plat, struct pcpu *pc)
{
 return (ENXIO);

}
