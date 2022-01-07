
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_virt_mem {int * va; } ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int ,int ,int) ;

i40e_status
i40e_allocate_virt_mem(struct i40e_hw *hw, struct i40e_virt_mem *mem, u32 size)
{
 mem->va = malloc(size, M_DEVBUF, M_NOWAIT | M_ZERO);
 return(mem->va == ((void*)0));
}
