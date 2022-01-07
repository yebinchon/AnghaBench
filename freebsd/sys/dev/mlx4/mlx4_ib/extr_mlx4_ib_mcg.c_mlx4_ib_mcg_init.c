
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int clean_wq ;

int mlx4_ib_mcg_init(void)
{
 clean_wq = alloc_ordered_workqueue("mlx4_ib_mcg", WQ_MEM_RECLAIM);
 if (!clean_wq)
  return -ENOMEM;

 return 0;
}
