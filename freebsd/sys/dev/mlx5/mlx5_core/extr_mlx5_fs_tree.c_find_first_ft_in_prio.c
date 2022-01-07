
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_table {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct fs_prio {TYPE_1__ base; } ;


 struct mlx5_flow_table* _find_first_ft_in_prio (struct fs_prio*,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mlx5_flow_table *find_first_ft_in_prio(struct fs_prio *prio,
           struct list_head *start)
{
 struct mlx5_flow_table *ft;

 if (!prio)
  return ((void*)0);

 mutex_lock(&prio->base.lock);
 ft = _find_first_ft_in_prio(prio, start);
 mutex_unlock(&prio->base.lock);

 return ft;
}
