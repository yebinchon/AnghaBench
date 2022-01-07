
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int XEN_APIC_UNSUPPORTED ;

__attribute__((used)) static int
xen_pv_lapic_set_lvt_mask(u_int apic_id, u_int lvt, u_char masked)
{

 XEN_APIC_UNSUPPORTED;
 return (0);
}
