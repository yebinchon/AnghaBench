
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int HVM_PARAM_STORE_PFN ;
 int hvm_get_parameter (int ) ;

__attribute__((used)) static vm_paddr_t
hvm_get_xenstore_mfn(void)
{

 return (hvm_get_parameter(HVM_PARAM_STORE_PFN));
}
