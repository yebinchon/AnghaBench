
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int bcopy (int ,union savefpu*,int ) ;
 int cpu_max_ext_state_size ;
 int npx_initialstate ;

void
fpu_save_area_reset(union savefpu *fsa)
{

 bcopy(npx_initialstate, fsa, cpu_max_ext_state_size);
}
