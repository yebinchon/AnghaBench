
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_sa_comp_mask ;


 int IB_SA_COMP_MASK (int) ;

ib_sa_comp_mask mlx4_ib_get_aguid_comp_mask_from_ix(int index)
{
 return IB_SA_COMP_MASK(4 + index);
}
