
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_virt_mem {int * va; } ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;


 int M_DEVBUF ;
 int free (int *,int ) ;

i40e_status
i40e_free_virt_mem(struct i40e_hw *hw, struct i40e_virt_mem *mem)
{
 free(mem->va, M_DEVBUF);
 mem->va = ((void*)0);

 return(0);
}
