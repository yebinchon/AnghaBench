
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct per_user_data {int user_data_lock; int gref_tree; } ;
struct ioctl_gntdev_dealloc_gref {scalar_t__ count; int index; } ;
struct gntdev_gref {int dummy; } ;
struct TYPE_4__ {int to_kill_grefs_mtx; int to_kill_grefs; } ;
struct TYPE_3__ {int list; } ;


 int EINVAL ;
 int LOG_ERR ;
 struct gntdev_gref* RB_NEXT (int ,int *,struct gntdev_gref*) ;
 int RB_REMOVE (int ,int *,struct gntdev_gref*) ;
 int STAILQ_INSERT_TAIL (int *,struct gntdev_gref*,int ) ;
 TYPE_2__ cleanup_data ;
 int cleanup_task ;
 int devfs_get_cdevpriv (void**) ;
 struct gntdev_gref* gntdev_find_grefs (struct per_user_data*,int ,scalar_t__) ;
 TYPE_1__ gref_next ;
 int gref_tree_head ;
 int log (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int put_file_offset (struct per_user_data*,scalar_t__,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
gntdev_dealloc_gref(struct ioctl_gntdev_dealloc_gref *arg)
{
 int error;
 uint32_t count;
 struct gntdev_gref *gref, *gref_tmp;
 struct per_user_data *priv_user;

 error = devfs_get_cdevpriv((void**) &priv_user);
 if (error != 0)
  return (EINVAL);

 gref = gntdev_find_grefs(priv_user, arg->index, arg->count);
 if (gref == ((void*)0)) {
  log(LOG_ERR, "Can't find requested grant-refs.");
  return (EINVAL);
 }


 count = arg->count;
 mtx_lock(&priv_user->user_data_lock);
 mtx_lock(&cleanup_data.to_kill_grefs_mtx);
 for (; gref != ((void*)0) && count > 0; gref = gref_tmp) {
  gref_tmp = RB_NEXT(gref_tree_head, &priv_user->gref_tree, gref);
  RB_REMOVE(gref_tree_head, &priv_user->gref_tree, gref);
  STAILQ_INSERT_TAIL(&cleanup_data.to_kill_grefs, gref,
      gref_next.list);
  count--;
 }
 mtx_unlock(&cleanup_data.to_kill_grefs_mtx);
 mtx_unlock(&priv_user->user_data_lock);

 taskqueue_enqueue(taskqueue_thread, &cleanup_task);
 put_file_offset(priv_user, arg->count, arg->index);

 return (0);
}
