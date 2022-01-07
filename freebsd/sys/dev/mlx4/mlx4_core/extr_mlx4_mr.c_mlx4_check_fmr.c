
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_fmr {int max_pages; int page_shift; scalar_t__ maps; scalar_t__ max_maps; } ;


 int EINVAL ;

__attribute__((used)) static inline int mlx4_check_fmr(struct mlx4_fmr *fmr, u64 *page_list,
      int npages, u64 iova)
{
 int i, page_mask;

 if (npages > fmr->max_pages)
  return -EINVAL;

 page_mask = (1 << fmr->page_shift) - 1;


 if (iova & page_mask)
  return -EINVAL;


 if (0)
  for (i = 0; i < npages; ++i) {
   if (page_list[i] & ~page_mask)
    return -EINVAL;
  }

 if (fmr->maps >= fmr->max_maps)
  return -EINVAL;

 return 0;
}
