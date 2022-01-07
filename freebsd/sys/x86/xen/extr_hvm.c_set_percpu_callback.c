
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_hvm_evtchn_upcall_vector {unsigned int vcpu; int vector; } ;


 int HVMOP_set_evtchn_upcall_vector ;
 int HYPERVISOR_hvm_op (int ,struct xen_hvm_evtchn_upcall_vector*) ;
 int IDT_EVTCHN ;
 int xen_translate_error (int) ;

__attribute__((used)) static int
set_percpu_callback(unsigned int vcpu)
{
 struct xen_hvm_evtchn_upcall_vector vec;
 int error;

 vec.vcpu = vcpu;
 vec.vector = IDT_EVTCHN;
 error = HYPERVISOR_hvm_op(HVMOP_set_evtchn_upcall_vector, &vec);

 return (error != 0 ? xen_translate_error(error) : 0);
}
