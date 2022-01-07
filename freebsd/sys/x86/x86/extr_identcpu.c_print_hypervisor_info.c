
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hv_vendor ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_hypervisor_info(void)
{

 if (*hv_vendor != '\0')
  printf("Hypervisor: Origin = \"%s\"\n", hv_vendor);
}
