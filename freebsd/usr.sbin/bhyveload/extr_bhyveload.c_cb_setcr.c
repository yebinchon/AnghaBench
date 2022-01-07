
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int BSP ;
 int USERBOOT_EXIT_QUIT ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_CR3 ;
 int VM_REG_GUEST_CR4 ;
 int VM_REG_LAST ;
 int cb_exit (int *,int ) ;
 int cr3 ;
 int ctx ;
 int perror (char*) ;
 int printf (char*,int) ;
 int vm_set_register (int ,int ,int,int ) ;

__attribute__((used)) static void
cb_setcr(void *arg, int r, uint64_t v)
{
 int error;
 enum vm_reg_name vmreg;

 vmreg = VM_REG_LAST;

 switch (r) {
 case 0:
  vmreg = VM_REG_GUEST_CR0;
  break;
 case 3:
  vmreg = VM_REG_GUEST_CR3;
  cr3 = v;
  break;
 case 4:
  vmreg = VM_REG_GUEST_CR4;
  break;
 default:
  break;
 }

 if (vmreg == VM_REG_LAST) {
  printf("test_setcr(%d): not implemented\n", r);
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }

 error = vm_set_register(ctx, BSP, vmreg, v);
 if (error) {
  perror("vm_set_cr");
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }
}
