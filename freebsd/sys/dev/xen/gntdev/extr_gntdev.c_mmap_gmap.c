
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef size_t uint32_t ;
struct vm_object {int dummy; } ;
struct per_user_data {int dummy; } ;
struct gntdev_gmap {size_t count; TYPE_1__* map; TYPE_3__* grant_map_ops; } ;
struct TYPE_5__ {scalar_t__ status; int flags; scalar_t__ host_addr; } ;
struct TYPE_4__ {struct vm_object* mem; scalar_t__ phys_base_addr; int * pseudo_phys_res; scalar_t__ pseudo_phys_res_id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GNTMAP_readonly ;
 scalar_t__ GNTST_bad_page ;
 scalar_t__ GNTST_eagain ;
 scalar_t__ GNTST_okay ;
 int GNTTABOP_map_grant_ref ;
 int HYPERVISOR_grant_table_op (int ,TYPE_3__*,int) ;
 int M_GNTDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int OBJT_MGTDEVICE ;
 size_t PAGE_SIZE ;
 int PROT_WRITE ;
 int SBT_1MS ;
 struct vm_object* cdev_pager_allocate (struct gntdev_gmap*,int ,int *,int ,int,int ,int *) ;
 int free (TYPE_1__*,int ) ;
 int gntdev_dev ;
 int gntdev_gmap_pg_ops ;
 TYPE_1__* malloc (int,int ,int) ;
 int pause (char*,int) ;
 scalar_t__ rman_get_start (int *) ;
 int vm_object_deallocate (struct vm_object*) ;
 int vm_object_reference (struct vm_object*) ;
 int * xenmem_alloc (int ,scalar_t__*,int ) ;
 int xenmem_free (int ,scalar_t__,int *) ;

__attribute__((used)) static int
mmap_gmap(struct per_user_data *priv_user, struct gntdev_gmap *gmap_start,
    vm_ooffset_t *offset, vm_size_t size, struct vm_object **object, int nprot)
{
 uint32_t i;
 int error;






 if (gmap_start->map) {
  vm_object_reference(gmap_start->map->mem);
  *object = gmap_start->map->mem;
  return (0);
 }

 gmap_start->map = malloc(sizeof(*(gmap_start->map)), M_GNTDEV,
     M_WAITOK | M_ZERO);


 gmap_start->map->pseudo_phys_res_id = 0;
 gmap_start->map->pseudo_phys_res = xenmem_alloc(gntdev_dev,
     &gmap_start->map->pseudo_phys_res_id, size);
 if (gmap_start->map->pseudo_phys_res == ((void*)0)) {
  free(gmap_start->map, M_GNTDEV);
  gmap_start->map = ((void*)0);
  return (ENOMEM);
 }
 gmap_start->map->phys_base_addr =
     rman_get_start(gmap_start->map->pseudo_phys_res);


 gmap_start->map->mem = cdev_pager_allocate(gmap_start, OBJT_MGTDEVICE,
     &gntdev_gmap_pg_ops, size, nprot, *offset, ((void*)0));
 if (gmap_start->map->mem == ((void*)0)) {
  xenmem_free(gntdev_dev, gmap_start->map->pseudo_phys_res_id,
      gmap_start->map->pseudo_phys_res);
  free(gmap_start->map, M_GNTDEV);
  gmap_start->map = ((void*)0);
  return (ENOMEM);
 }

 for (i = 0; i < gmap_start->count; i++) {
  gmap_start->grant_map_ops[i].host_addr =
      gmap_start->map->phys_base_addr + i * PAGE_SIZE;

  if ((nprot & PROT_WRITE) == 0)
   gmap_start->grant_map_ops[i].flags |= GNTMAP_readonly;
 }

 error = HYPERVISOR_grant_table_op(GNTTABOP_map_grant_ref,
     gmap_start->grant_map_ops, gmap_start->count);
 if (error != 0) {





  vm_object_deallocate(gmap_start->map->mem);

  return (EINVAL);
 }


 for (i = 0; i < gmap_start->count; i++) {
  int delay = 1;
  while (delay < 256 &&
      gmap_start->grant_map_ops[i].status == GNTST_eagain) {
   HYPERVISOR_grant_table_op( GNTTABOP_map_grant_ref,
       &gmap_start->grant_map_ops[i], 1);
   pause(("gntmap"), delay * SBT_1MS);
   delay++;
  }
  if (gmap_start->grant_map_ops[i].status == GNTST_eagain)
   gmap_start->grant_map_ops[i].status = GNTST_bad_page;

  if (gmap_start->grant_map_ops[i].status != GNTST_okay) {






   vm_object_deallocate(gmap_start->map->mem);

   return (EINVAL);
  }
 }
 vm_object_reference(gmap_start->map->mem);

 *object = gmap_start->map->mem;

 return (0);
}
