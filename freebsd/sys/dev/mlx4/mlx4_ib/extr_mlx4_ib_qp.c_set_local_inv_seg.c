
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_wqe_local_inval_seg {int mem_key; } ;


 int cpu_to_be32 (int ) ;
 int memset (struct mlx4_wqe_local_inval_seg*,int ,int) ;

__attribute__((used)) static void set_local_inv_seg(struct mlx4_wqe_local_inval_seg *iseg, u32 rkey)
{
 memset(iseg, 0, sizeof(*iseg));
 iseg->mem_key = cpu_to_be32(rkey);
}
