
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int PCPU_GET (int ) ;
 int apic_id ;

u_int
intr_next_cpu(int domain)
{

 return (PCPU_GET(apic_id));
}
