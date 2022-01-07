
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mr_op; } ;


 scalar_t__ CPU_VENDOR_AMD ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int k6_mrops ;
 TYPE_1__ mem_range_softc ;

__attribute__((used)) static void
k6_mem_drvinit(void *unused)
{

 if (cpu_vendor_id != CPU_VENDOR_AMD)
  return;
 if ((cpu_id & 0xf00) != 0x500)
  return;
 if ((cpu_id & 0xf0) < 0x80 ||
     ((cpu_id & 0xf0) == 0x80 && (cpu_id & 0xf) <= 0x7))
  return;
 mem_range_softc.mr_op = &k6_mrops;
}
