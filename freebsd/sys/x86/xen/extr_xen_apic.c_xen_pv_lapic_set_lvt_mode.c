
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int XEN_APIC_UNSUPPORTED ;

__attribute__((used)) static int
xen_pv_lapic_set_lvt_mode(u_int apic_id, u_int lvt, uint32_t mode)
{

 XEN_APIC_UNSUPPORTED;
 return (0);
}
