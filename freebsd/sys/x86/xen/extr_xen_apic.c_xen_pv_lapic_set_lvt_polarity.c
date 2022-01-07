
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;


 int XEN_APIC_UNSUPPORTED ;

__attribute__((used)) static int
xen_pv_lapic_set_lvt_polarity(u_int apic_id, u_int lvt, enum intr_polarity pol)
{

 XEN_APIC_UNSUPPORTED;
 return (0);
}
