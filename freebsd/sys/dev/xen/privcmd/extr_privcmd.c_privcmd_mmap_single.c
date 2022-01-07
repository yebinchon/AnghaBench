
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_ooffset_t ;
typedef int * vm_object_t ;
struct privcmd_map {int * mem; int * pseudo_phys_res; scalar_t__ pseudo_phys_res_id; int phys_base_addr; int size; } ;
struct cdev {int dummy; } ;


 int ENOMEM ;
 int M_PRIVCMD ;
 int M_WAITOK ;
 int M_ZERO ;
 int OBJT_MGTDEVICE ;
 int OFF_TO_IDX (int ) ;
 int * cdev_pager_allocate (struct privcmd_map*,int ,int *,int ,int,int ,int *) ;
 int free (struct privcmd_map*,int ) ;
 struct privcmd_map* malloc (int,int ,int) ;
 int privcmd_dev ;
 int privcmd_pg_ops ;
 int rman_get_start (int *) ;
 int * xenmem_alloc (int ,scalar_t__*,int ) ;
 int xenmem_free (int ,scalar_t__,int *) ;

__attribute__((used)) static int
privcmd_mmap_single(struct cdev *cdev, vm_ooffset_t *offset, vm_size_t size,
    vm_object_t *object, int nprot)
{
 struct privcmd_map *map;

 map = malloc(sizeof(*map), M_PRIVCMD, M_WAITOK | M_ZERO);

 map->size = OFF_TO_IDX(size);
 map->pseudo_phys_res_id = 0;

 map->pseudo_phys_res = xenmem_alloc(privcmd_dev,
     &map->pseudo_phys_res_id, size);
 if (map->pseudo_phys_res == ((void*)0)) {
  free(map, M_PRIVCMD);
  return (ENOMEM);
 }

 map->phys_base_addr = rman_get_start(map->pseudo_phys_res);
 map->mem = cdev_pager_allocate(map, OBJT_MGTDEVICE, &privcmd_pg_ops,
     size, nprot, *offset, ((void*)0));
 if (map->mem == ((void*)0)) {
  xenmem_free(privcmd_dev, map->pseudo_phys_res_id,
      map->pseudo_phys_res);
  free(map, M_PRIVCMD);
  return (ENOMEM);
 }

 *object = map->mem;

 return (0);
}
