
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mlx5_flow_namespace {TYPE_1__ base; } ;
struct fs_prio {int objs; int base; } ;


 int ENOMEM ;
 struct mlx5_flow_namespace* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int fs_add_node (TYPE_1__*,int *,char const*,int) ;
 int fs_init_namespace (struct mlx5_flow_namespace*) ;
 struct mlx5_flow_namespace* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct mlx5_flow_namespace *fs_create_namespace(struct fs_prio *prio,
             const char *name)
{
 struct mlx5_flow_namespace *ns;

 ns = kzalloc(sizeof(*ns), GFP_KERNEL);
 if (!ns)
  return ERR_PTR(-ENOMEM);

 fs_init_namespace(ns);
 fs_add_node(&ns->base, &prio->base, name, 1);
 list_add_tail(&ns->base.list, &prio->objs);

 return ns;
}
