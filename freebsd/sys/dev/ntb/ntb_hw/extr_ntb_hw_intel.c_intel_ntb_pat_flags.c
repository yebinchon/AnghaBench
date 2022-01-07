
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;


 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WEAK_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_BACK ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int VM_MEMATTR_WRITE_PROTECTED ;
 int VM_MEMATTR_WRITE_THROUGH ;






 int g_ntb_mw_pat ;

__attribute__((used)) static inline vm_memattr_t
intel_ntb_pat_flags(void)
{

 switch (g_ntb_mw_pat) {
 case 130:
  return (VM_MEMATTR_WRITE_COMBINING);
 case 128:
  return (VM_MEMATTR_WRITE_THROUGH);
 case 129:
  return (VM_MEMATTR_WRITE_PROTECTED);
 case 131:
  return (VM_MEMATTR_WRITE_BACK);
 case 132:
  return (VM_MEMATTR_WEAK_UNCACHEABLE);
 case 133:

 default:
  return (VM_MEMATTR_UNCACHEABLE);
 }
}
