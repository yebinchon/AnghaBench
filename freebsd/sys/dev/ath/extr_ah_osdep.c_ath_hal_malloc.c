
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ATH_HAL ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* malloc (size_t,int ,int) ;

void*
ath_hal_malloc(size_t size)
{
 return malloc(size, M_ATH_HAL, M_NOWAIT | M_ZERO);
}
