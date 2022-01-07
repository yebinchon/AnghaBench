
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_VENDOR_ID ;
 int IA32_ARCH_CAP_RDCL_NO ;
 int cpu_ia32_arch_caps ;
 int cpu_vendor ;
 scalar_t__ strcmp (int ,int ) ;

int
pti_get_default(void)
{

 if (strcmp(cpu_vendor, AMD_VENDOR_ID) == 0)
  return (0);
 if ((cpu_ia32_arch_caps & IA32_ARCH_CAP_RDCL_NO) != 0)
  return (0);
 return (1);
}
