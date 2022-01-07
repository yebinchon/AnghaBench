
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_GET (int ) ;
 int apic_id ;

__attribute__((used)) static int
xen_pv_lapic_id(void)
{

 return (PCPU_GET(apic_id));
}
