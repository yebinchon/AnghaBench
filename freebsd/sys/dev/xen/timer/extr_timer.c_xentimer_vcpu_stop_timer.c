
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_vcpu_op (int ,int,int *) ;
 int VCPUOP_stop_singleshot_timer ;

__attribute__((used)) static int
xentimer_vcpu_stop_timer(int vcpu)
{

 return (HYPERVISOR_vcpu_op(VCPUOP_stop_singleshot_timer, vcpu, ((void*)0)));
}
