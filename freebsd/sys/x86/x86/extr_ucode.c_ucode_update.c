
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_swap_ptr (void*,uintptr_t) ;
 void* early_ucode_data ;
 int ucode_data ;

void *
ucode_update(void *newdata)
{

 newdata = (void *)atomic_swap_ptr((void *)&ucode_data,
     (uintptr_t)newdata);
 if (newdata == early_ucode_data)
  newdata = ((void*)0);
 return (newdata);
}
