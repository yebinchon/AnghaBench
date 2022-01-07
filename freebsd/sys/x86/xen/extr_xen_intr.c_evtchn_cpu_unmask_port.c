
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xen_intr_pcpu_data {int evtchn_enabled; } ;
typedef int evtchn_port_t ;


 struct xen_intr_pcpu_data* DPCPU_ID_PTR (int ,int ) ;
 int xen_intr_pcpu ;
 int xen_set_bit (int ,int ) ;

__attribute__((used)) static inline void
evtchn_cpu_unmask_port(u_int cpu, evtchn_port_t port)
{
 struct xen_intr_pcpu_data *pcpu;

 pcpu = DPCPU_ID_PTR(cpu, xen_intr_pcpu);
 xen_set_bit(port, pcpu->evtchn_enabled);
}
