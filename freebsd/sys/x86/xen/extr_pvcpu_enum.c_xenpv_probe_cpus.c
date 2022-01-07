
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_vcpu_op (int ,int,int *) ;
 int MAXCPU ;
 int MAX_APIC_ID ;
 int VCPUOP_is_up ;
 int max_apic_id ;
 int min (int,int) ;
 int mp_maxid ;
 int mp_ncpus ;

__attribute__((used)) static int
xenpv_probe_cpus(void)
{
 return (0);
}
