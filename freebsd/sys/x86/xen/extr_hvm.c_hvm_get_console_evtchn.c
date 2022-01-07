
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evtchn_port_t ;


 int HVM_PARAM_CONSOLE_EVTCHN ;
 int hvm_get_parameter (int ) ;

__attribute__((used)) static evtchn_port_t
hvm_get_console_evtchn(void)
{

 return (hvm_get_parameter(HVM_PARAM_CONSOLE_EVTCHN));
}
