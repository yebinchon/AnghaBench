
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int uint32_t ;
struct vm_object {int dummy; } ;
struct per_user_data {int dummy; } ;
struct gntdev_gref {int dummy; } ;
struct gntdev_gmap {int dummy; } ;
struct cdev {int dummy; } ;


 int EINVAL ;
 int OFF_TO_IDX (int ) ;
 int devfs_get_cdevpriv (void**) ;
 struct gntdev_gmap* gntdev_find_gmap (struct per_user_data*,int ,int ) ;
 struct gntdev_gref* gntdev_find_grefs (struct per_user_data*,int ,int ) ;
 int mmap_gmap (struct per_user_data*,struct gntdev_gmap*,int *,int ,struct vm_object**,int) ;
 int mmap_gref (struct per_user_data*,struct gntdev_gref*,int ,int ,struct vm_object**) ;

__attribute__((used)) static int
gntdev_mmap_single(struct cdev *cdev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **object, int nprot)
{
 int error;
 uint32_t count;
 struct gntdev_gref *gref_start;
 struct gntdev_gmap *gmap_start;
 struct per_user_data *priv_user;

 error = devfs_get_cdevpriv((void**) &priv_user);
 if (error != 0)
  return (EINVAL);

 count = OFF_TO_IDX(size);

 gref_start = gntdev_find_grefs(priv_user, *offset, count);
 if (gref_start) {
  error = mmap_gref(priv_user, gref_start, count, size, object);
  return (error);
 }

 gmap_start = gntdev_find_gmap(priv_user, *offset, count);
 if (gmap_start) {
  error = mmap_gmap(priv_user, gmap_start, offset, size, object,
      nprot);
  return (error);
 }

 return (EINVAL);
}
