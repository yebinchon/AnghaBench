
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ATH_HAL ;
 int free (void*,int ) ;

void
ath_hal_free(void* p)
{
 free(p, M_ATH_HAL);
}
