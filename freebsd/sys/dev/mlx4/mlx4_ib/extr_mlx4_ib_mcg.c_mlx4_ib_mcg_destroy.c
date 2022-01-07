
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_wq ;
 int destroy_workqueue (int ) ;

void mlx4_ib_mcg_destroy(void)
{
 destroy_workqueue(clean_wq);
}
