
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_object_device {int object_lock; int object_hash; } ;
struct ttm_base_object {int (* refcount_release ) (struct ttm_base_object**) ;TYPE_1__* tfile; int hash; } ;
struct TYPE_2__ {struct ttm_object_device* tdev; } ;


 int drm_ht_remove_item (int *,int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int stub1 (struct ttm_base_object**) ;
 int ttm_object_file_unref (TYPE_1__**) ;

__attribute__((used)) static void ttm_release_base(struct ttm_base_object *base)
{
 struct ttm_object_device *tdev = base->tfile->tdev;

 (void)drm_ht_remove_item(&tdev->object_hash, &base->hash);
 rw_wunlock(&tdev->object_lock);






 if (base->refcount_release) {
  ttm_object_file_unref(&base->tfile);
  base->refcount_release(&base);
 }
 rw_wlock(&tdev->object_lock);
}
