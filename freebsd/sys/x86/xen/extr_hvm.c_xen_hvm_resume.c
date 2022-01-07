
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XEN_HVM_INIT_CANCELLED_SUSPEND ;
 int XEN_HVM_INIT_RESUME ;
 int xen_hvm_cpu_init () ;
 int xen_hvm_init (int ) ;

void
xen_hvm_resume(bool suspend_cancelled)
{

 xen_hvm_init(suspend_cancelled ?
     XEN_HVM_INIT_CANCELLED_SUSPEND : XEN_HVM_INIT_RESUME);


 xen_hvm_cpu_init();
}
