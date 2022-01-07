
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx5_fw_page {size_t numpages; scalar_t__ dma_addr; } ;


 int KASSERT (int,char*) ;
 size_t MLX5_ADAPTER_PAGE_SIZE ;

u64
mlx5_fwp_get_dma(struct mlx5_fw_page *fwp, size_t offset)
{
 size_t index = (offset / MLX5_ADAPTER_PAGE_SIZE);
 KASSERT(index < fwp->numpages, ("Invalid offset: %lld", (long long)offset));

 return ((fwp + index)->dma_addr + (offset % MLX5_ADAPTER_PAGE_SIZE));
}
