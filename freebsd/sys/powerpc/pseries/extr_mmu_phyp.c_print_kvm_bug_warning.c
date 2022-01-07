
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ brokenkvm ;
 int printf (char*) ;

__attribute__((used)) static void
print_kvm_bug_warning(void *data)
{

 if (brokenkvm)
  printf("WARNING: Running on a broken hypervisor that does "
      "not support mandatory H_CLEAR_MOD and H_CLEAR_REF "
      "hypercalls. Performance will be suboptimal.\n");
}
