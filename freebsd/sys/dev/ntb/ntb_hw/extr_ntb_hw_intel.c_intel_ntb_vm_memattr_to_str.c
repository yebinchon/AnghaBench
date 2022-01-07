
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
__attribute__((used)) static inline const char *
intel_ntb_vm_memattr_to_str(vm_memattr_t pat)
{

 switch (pat) {
 case 130:
  return ("WRITE_COMBINING");
 case 128:
  return ("WRITE_THROUGH");
 case 129:
  return ("WRITE_PROTECTED");
 case 131:
  return ("WRITE_BACK");
 case 132:
  return ("UNCACHED");
 case 133:
  return ("UNCACHEABLE");
 default:
  return ("UNKNOWN");
 }
}
