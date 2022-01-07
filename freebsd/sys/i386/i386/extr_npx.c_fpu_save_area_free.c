
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int fpu_save_area_zone ;
 int uma_zfree (int ,union savefpu*) ;

void
fpu_save_area_free(union savefpu *fsa)
{

 uma_zfree(fpu_save_area_zone, fsa);
}
