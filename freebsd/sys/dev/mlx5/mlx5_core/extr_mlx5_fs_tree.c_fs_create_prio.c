
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_flow_namespace {int prios; int base; } ;
struct TYPE_2__ {int list; int type; } ;
struct fs_prio {int max_ft; unsigned int prio; int shared_lock; int objs; TYPE_1__ base; int flags; int max_ns; } ;


 int ENOMEM ;
 struct fs_prio* ERR_PTR (int ) ;
 int FS_TYPE_PRIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_CORE_FS_PRIO_MAX_NS ;
 int fs_add_node (TYPE_1__*,int *,char const*,int) ;
 struct fs_prio* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct fs_prio *fs_create_prio(struct mlx5_flow_namespace *ns,
          unsigned prio, int max_ft,
          const char *name, u8 flags)
{
 struct fs_prio *fs_prio;

 fs_prio = kzalloc(sizeof(*fs_prio), GFP_KERNEL);
 if (!fs_prio)
  return ERR_PTR(-ENOMEM);

 fs_prio->base.type = FS_TYPE_PRIO;
 fs_add_node(&fs_prio->base, &ns->base, name, 1);
 fs_prio->max_ft = max_ft;
 fs_prio->max_ns = MLX5_CORE_FS_PRIO_MAX_NS;
 fs_prio->prio = prio;
 fs_prio->flags = flags;
 list_add_tail(&fs_prio->base.list, &ns->prios);
 INIT_LIST_HEAD(&fs_prio->objs);
 mutex_init(&fs_prio->shared_lock);

 return fs_prio;
}
