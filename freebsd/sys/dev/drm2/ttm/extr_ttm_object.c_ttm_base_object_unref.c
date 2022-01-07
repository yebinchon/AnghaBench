
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_object_device {int object_lock; } ;
struct ttm_base_object {int refcount; TYPE_1__* tfile; } ;
struct TYPE_2__ {struct ttm_object_device* tdev; } ;


 scalar_t__ refcount_release (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int ttm_release_base (struct ttm_base_object*) ;

void ttm_base_object_unref(struct ttm_base_object **p_base)
{
 struct ttm_base_object *base = *p_base;
 struct ttm_object_device *tdev = base->tfile->tdev;

 *p_base = ((void*)0);






 rw_wlock(&tdev->object_lock);
 if (refcount_release(&base->refcount))
  ttm_release_base(base);
 rw_wunlock(&tdev->object_lock);
}
