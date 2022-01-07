
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_device {int object_hash; int object_count; int object_lock; struct ttm_mem_global* mem_glob; } ;
struct ttm_mem_global {int dummy; } ;


 int M_TTM_OBJ_DEV ;
 int M_WAITOK ;
 int atomic_set (int *,int ) ;
 int drm_ht_create (int *,unsigned int) ;
 int free (struct ttm_object_device*,int ) ;
 struct ttm_object_device* malloc (int,int ,int ) ;
 int rw_init (int *,char*) ;

struct ttm_object_device *ttm_object_device_init(struct ttm_mem_global
       *mem_glob,
       unsigned int hash_order)
{
 struct ttm_object_device *tdev;
 int ret;

 tdev = malloc(sizeof(*tdev), M_TTM_OBJ_DEV, M_WAITOK);
 tdev->mem_glob = mem_glob;
 rw_init(&tdev->object_lock, "ttmdo");
 atomic_set(&tdev->object_count, 0);
 ret = drm_ht_create(&tdev->object_hash, hash_order);

 if (ret == 0)
  return tdev;

 free(tdev, M_TTM_OBJ_DEV);
 return ((void*)0);
}
