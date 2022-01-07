
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct per_user_data {int user_data_lock; int gmap_tree; } ;
struct ioctl_gntdev_unmap_grant_ref {int index; int count; } ;
struct gntdev_gmap {TYPE_1__* map; } ;
struct TYPE_6__ {int to_kill_gmaps_mtx; int to_kill_gmaps; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_4__ {int mem; } ;


 int EINVAL ;
 int LOG_ERR ;
 int RB_REMOVE (int ,int *,struct gntdev_gmap*) ;
 int STAILQ_INSERT_TAIL (int *,struct gntdev_gmap*,int ) ;
 TYPE_3__ cleanup_data ;
 int cleanup_task ;
 int devfs_get_cdevpriv (void**) ;
 TYPE_2__ gmap_next ;
 int gmap_tree_head ;
 struct gntdev_gmap* gntdev_find_gmap (struct per_user_data*,int ,int ) ;
 int log (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int put_file_offset (struct per_user_data*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static int
gntdev_unmap_grant_ref(struct ioctl_gntdev_unmap_grant_ref *arg)
{
 int error;
 struct gntdev_gmap *gmap;
 struct per_user_data *priv_user;

 error = devfs_get_cdevpriv((void**) &priv_user);
 if (error != 0)
  return (EINVAL);

 gmap = gntdev_find_gmap(priv_user, arg->index, arg->count);
 if (gmap == ((void*)0)) {
  log(LOG_ERR, "Can't find requested grant-map.");
  return (EINVAL);
 }

 mtx_lock(&priv_user->user_data_lock);
 mtx_lock(&cleanup_data.to_kill_gmaps_mtx);
 RB_REMOVE(gmap_tree_head, &priv_user->gmap_tree, gmap);
 STAILQ_INSERT_TAIL(&cleanup_data.to_kill_gmaps, gmap, gmap_next.list);
 mtx_unlock(&cleanup_data.to_kill_gmaps_mtx);
 mtx_unlock(&priv_user->user_data_lock);

 if (gmap->map)
  vm_object_deallocate(gmap->map->mem);

 taskqueue_enqueue(taskqueue_thread, &cleanup_task);
 put_file_offset(priv_user, arg->count, arg->index);

 return (0);
}
