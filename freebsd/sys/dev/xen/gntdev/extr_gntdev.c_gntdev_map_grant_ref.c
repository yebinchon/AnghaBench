
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct per_user_data {int user_data_lock; int gmap_tree; } ;
struct ioctl_gntdev_map_grant_ref {int count; int index; int * refs; } ;
struct ioctl_gntdev_grant_ref {int ref; int domid; } ;
struct gnttab_map_grant_ref {int dummy; } ;
struct gntdev_gmap {int count; int handle; int file_index; struct gntdev_gmap* grant_map_ops; int flags; int ref; int dom; } ;
typedef int ref ;


 int EINVAL ;
 int GNTMAP_host_map ;
 int M_GNTDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int RB_INSERT (int ,int *,struct gntdev_gmap*) ;
 int copyin (int *,struct ioctl_gntdev_grant_ref*,int) ;
 int devfs_get_cdevpriv (void**) ;
 int free (struct gntdev_gmap*,int ) ;
 int get_file_offset (struct per_user_data*,size_t,int *) ;
 int gmap_tree_head ;
 void* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
gntdev_map_grant_ref(struct ioctl_gntdev_map_grant_ref *arg)
{
 uint32_t i;
 int error;
 struct gntdev_gmap *gmap;
 struct per_user_data *priv_user;

 error = devfs_get_cdevpriv((void**) &priv_user);
 if (error != 0)
  return (EINVAL);

 gmap = malloc(sizeof(*gmap), M_GNTDEV, M_WAITOK | M_ZERO);
 gmap->count = arg->count;
 gmap->grant_map_ops =
     malloc(sizeof(struct gnttab_map_grant_ref) * arg->count,
         M_GNTDEV, M_WAITOK | M_ZERO);

 for (i = 0; i < arg->count; i++) {
  struct ioctl_gntdev_grant_ref ref;

  error = copyin(&arg->refs[i], &ref, sizeof(ref));
  if (error != 0) {
   free(gmap->grant_map_ops, M_GNTDEV);
   free(gmap, M_GNTDEV);
   return (error);
  }
  gmap->grant_map_ops[i].dom = ref.domid;
  gmap->grant_map_ops[i].ref = ref.ref;
  gmap->grant_map_ops[i].handle = -1;
  gmap->grant_map_ops[i].flags = GNTMAP_host_map;
 }

 error = get_file_offset(priv_user, arg->count, &gmap->file_index);
 if (error != 0) {
  free(gmap->grant_map_ops, M_GNTDEV);
  free(gmap, M_GNTDEV);
  return (error);
 }

 mtx_lock(&priv_user->user_data_lock);
 RB_INSERT(gmap_tree_head, &priv_user->gmap_tree, gmap);
 mtx_unlock(&priv_user->user_data_lock);

 arg->index = gmap->file_index;

 return (error);
}
