
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int BSP ;

 int USERBOOT_EXIT_QUIT ;
 int VM_REG_GUEST_EFER ;
 int VM_REG_LAST ;
 int cb_exit (int *,int ) ;
 int ctx ;
 int perror (char*) ;
 int printf (char*,int) ;
 int vm_set_register (int ,int ,int,int ) ;

__attribute__((used)) static void
cb_setmsr(void *arg, int r, uint64_t v)
{
 int error;
 enum vm_reg_name vmreg;

 vmreg = VM_REG_LAST;

 switch (r) {
 case 128:
  vmreg = VM_REG_GUEST_EFER;
  break;
 default:
  break;
 }

 if (vmreg == VM_REG_LAST) {
  printf("test_setmsr(%d): not implemented\n", r);
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }

 error = vm_set_register(ctx, BSP, vmreg, v);
 if (error) {
  perror("vm_set_msr");
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }
}
