
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int M_WAITOK ;
 int fpu_save_area_zone ;
 union savefpu* uma_zalloc (int ,int ) ;

union savefpu *
fpu_save_area_alloc(void)
{

 return (uma_zalloc(fpu_save_area_zone, M_WAITOK));
}
