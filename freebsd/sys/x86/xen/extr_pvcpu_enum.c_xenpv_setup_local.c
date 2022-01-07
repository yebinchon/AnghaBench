
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_vcpu_op (int ,int,int *) ;
 int MAXCPU ;
 int MAX_APIC_ID ;
 int PCPU_SET (int ,int ) ;
 int VCPUOP_is_up ;
 int lapic_create (int,int) ;
 int lapic_init (int ) ;
 int vcpu_id ;

__attribute__((used)) static int
xenpv_setup_local(void)
{
 PCPU_SET(vcpu_id, 0);
 lapic_init(0);
 return (0);
}
