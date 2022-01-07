
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_2__ global; } ;
struct mlx4_ib_demux_ctx {int port; int dev; int mcg_mgid0_list; } ;
struct TYPE_11__ {int mode; int name; } ;
struct TYPE_10__ {TYPE_5__ attr; int * store; int show; } ;
struct TYPE_9__ {union ib_gid mgid; } ;
struct mcast_group {int refcount; TYPE_4__ dentry; int name; int mgid0_list; int state; TYPE_3__ rec; int lock; int timeout_work; int work; TYPE_1__* func; int pending_list; struct mlx4_ib_demux_ctx* demux; } ;
typedef int gfp_t ;
struct TYPE_7__ {int pending; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct mcast_group* ERR_PTR (int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_VFS ;
 int MCAST_IDLE ;
 int add_sysfs_port_mcg_attr (int ,int ,TYPE_5__*) ;
 int atomic_inc (int *) ;
 scalar_t__ be64_to_cpu (int ) ;
 int kfree (struct mcast_group*) ;
 struct mcast_group* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mcast_group* mcast_find (struct mlx4_ib_demux_ctx*,union ib_gid*) ;
 struct mcast_group* mcast_insert (struct mlx4_ib_demux_ctx*,struct mcast_group*) ;
 int mcg_warn (char*,int ) ;
 int memcmp (int *,union ib_gid*,int) ;
 int mgid0 ;
 int mlx4_ib_mcg_timeout_handler ;
 int mlx4_ib_mcg_work_handler ;
 int mutex_init (int *) ;
 int sprintf (int ,char*,long long,long long) ;
 int sysfs_attr_init (TYPE_5__*) ;
 int sysfs_show_group ;

__attribute__((used)) static struct mcast_group *acquire_group(struct mlx4_ib_demux_ctx *ctx,
      union ib_gid *mgid, int create,
      gfp_t gfp_mask)
{
 struct mcast_group *group, *cur_group;
 int is_mgid0;
 int i;

 is_mgid0 = !memcmp(&mgid0, mgid, sizeof mgid0);
 if (!is_mgid0) {
  group = mcast_find(ctx, mgid);
  if (group)
   goto found;
 }

 if (!create)
  return ERR_PTR(-ENOENT);

 group = kzalloc(sizeof *group, gfp_mask);
 if (!group)
  return ERR_PTR(-ENOMEM);

 group->demux = ctx;
 group->rec.mgid = *mgid;
 INIT_LIST_HEAD(&group->pending_list);
 INIT_LIST_HEAD(&group->mgid0_list);
 for (i = 0; i < MAX_VFS; ++i)
  INIT_LIST_HEAD(&group->func[i].pending);
 INIT_WORK(&group->work, mlx4_ib_mcg_work_handler);
 INIT_DELAYED_WORK(&group->timeout_work, mlx4_ib_mcg_timeout_handler);
 mutex_init(&group->lock);
 sprintf(group->name, "%016llx%016llx",
   (long long)be64_to_cpu(
       group->rec.mgid.global.subnet_prefix),
   (long long)be64_to_cpu(
       group->rec.mgid.global.interface_id));
 sysfs_attr_init(&group->dentry.attr);
 group->dentry.show = sysfs_show_group;
 group->dentry.store = ((void*)0);
 group->dentry.attr.name = group->name;
 group->dentry.attr.mode = 0400;
 group->state = MCAST_IDLE;

 if (is_mgid0) {
  list_add(&group->mgid0_list, &ctx->mcg_mgid0_list);
  goto found;
 }

 cur_group = mcast_insert(ctx, group);
 if (cur_group) {
  mcg_warn("group just showed up %s - confused\n", cur_group->name);
  kfree(group);
  return ERR_PTR(-EINVAL);
 }

 add_sysfs_port_mcg_attr(ctx->dev, ctx->port, &group->dentry.attr);

found:
 atomic_inc(&group->refcount);
 return group;
}
