
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BSP ;
 int USERBOOT_EXIT_QUIT ;
 int cb_exit (int *,int ) ;
 scalar_t__ cr3 ;
 int ctx ;
 int gdtbase ;
 int perror (char*) ;
 int rsp ;
 int vm_setup_freebsd_registers (int ,int ,int ,scalar_t__,int ,int ) ;
 int vm_setup_freebsd_registers_i386 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
cb_exec(void *arg, uint64_t rip)
{
 int error;

 if (cr3 == 0)
  error = vm_setup_freebsd_registers_i386(ctx, BSP, rip, gdtbase,
      rsp);
 else
  error = vm_setup_freebsd_registers(ctx, BSP, rip, cr3, gdtbase,
      rsp);
 if (error) {
  perror("vm_setup_freebsd_registers");
  cb_exit(((void*)0), USERBOOT_EXIT_QUIT);
 }

 cb_exit(((void*)0), 0);
}
