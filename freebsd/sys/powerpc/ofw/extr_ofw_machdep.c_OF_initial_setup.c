
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSL_DR ;
 int PSL_SF ;
 void* fdt ;
 int mfmsr () ;
 int* ofmsr ;
 int ofw_real_mode ;
 int ofw_save_trap_vec (int ) ;
 int openfirmware_entry (void*) ;
 int save_trap_init ;

void
OF_initial_setup(void *fdt_ptr, void *junk, int (*openfirm)(void *))
{
 ofw_real_mode = 1;


 fdt = fdt_ptr;
}
