
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct fs_prio {int dummy; } ;


 int EINVAL ;
 struct mlx5_flow_table* ERR_PTR (int ) ;
 struct mlx5_flow_table* _create_ft_common (struct mlx5_flow_namespace*,int ,struct fs_prio*,int,char const*) ;
 struct fs_prio* find_prio (struct mlx5_flow_namespace*,unsigned int) ;

__attribute__((used)) static struct mlx5_flow_table *create_ft_common(struct mlx5_flow_namespace *ns,
      u16 vport,
      unsigned int prio,
      int max_fte,
      const char *name)
{
 struct fs_prio *fs_prio = ((void*)0);
 fs_prio = find_prio(ns, prio);
 if (!fs_prio)
  return ERR_PTR(-EINVAL);

 return _create_ft_common(ns, vport, fs_prio, max_fte, name);
}
