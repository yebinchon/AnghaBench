
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BSP ;
 int USERBOOT_EXIT_QUIT ;
 int VM_REG_GUEST_GDTR ;
 int cb_exit (int *,int ) ;
 int ctx ;
 int gdtbase ;
 int perror (char*) ;
 int vm_set_desc (int ,int ,int ,int ,size_t,int ) ;

__attribute__((used)) static void
cb_setgdt(void *arg, uint64_t base, size_t size)
{
 int error;

 error = vm_set_desc(ctx, BSP, VM_REG_GUEST_GDTR, base, size - 1, 0);
 if (error != 0) {
  perror("vm_set_desc(gdt)");
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }

 gdtbase = base;
}
