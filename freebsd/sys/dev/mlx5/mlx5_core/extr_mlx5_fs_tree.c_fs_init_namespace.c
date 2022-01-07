
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mlx5_flow_namespace {int list_notifiers; int prios; int notifiers_rw_sem; int dests_rw_sem; TYPE_1__ base; } ;


 int FS_TYPE_NAMESPACE ;
 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;

__attribute__((used)) static struct mlx5_flow_namespace *fs_init_namespace(struct mlx5_flow_namespace
       *ns)
{
 ns->base.type = FS_TYPE_NAMESPACE;
 init_rwsem(&ns->dests_rw_sem);
 init_rwsem(&ns->notifiers_rw_sem);
 INIT_LIST_HEAD(&ns->prios);
 INIT_LIST_HEAD(&ns->list_notifiers);

 return ns;
}
