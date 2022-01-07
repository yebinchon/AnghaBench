
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_device {int object_lock; int object_hash; } ;


 int M_TTM_OBJ_DEV ;
 int drm_ht_remove (int *) ;
 int free (struct ttm_object_device*,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void ttm_object_device_release(struct ttm_object_device **p_tdev)
{
 struct ttm_object_device *tdev = *p_tdev;

 *p_tdev = ((void*)0);

 rw_wlock(&tdev->object_lock);
 drm_ht_remove(&tdev->object_hash);
 rw_wunlock(&tdev->object_lock);

 free(tdev, M_TTM_OBJ_DEV);
}
