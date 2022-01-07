
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ trig_page; } ;
struct xive_cpu {TYPE_1__ ipi_data; } ;
typedef int device_t ;


 struct xive_cpu* DPCPU_ID_PTR (int ,int ) ;
 int xive_cpu_data ;
 int xive_write_mmap8 (scalar_t__,int ) ;

__attribute__((used)) static void
xive_ipi(device_t dev, u_int cpu)
{
 struct xive_cpu *xive_cpud;

 xive_cpud = DPCPU_ID_PTR(cpu, xive_cpu_data);

 if (xive_cpud->ipi_data.trig_page == 0)
  return;
 xive_write_mmap8(xive_cpud->ipi_data.trig_page, 0);
}
