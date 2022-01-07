
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kld_sx ;
 int linker_file_register_modules (int ) ;
 int linker_kernel_file ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
linker_init_kernel_modules(void)
{

 sx_xlock(&kld_sx);
 linker_file_register_modules(linker_kernel_file);
 sx_xunlock(&kld_sx);
}
