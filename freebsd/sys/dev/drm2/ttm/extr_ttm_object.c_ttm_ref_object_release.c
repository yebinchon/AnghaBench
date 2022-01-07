
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_ref_object {size_t ref_type; struct ttm_base_object* obj; int head; int hash; struct ttm_object_file* tfile; } ;
struct ttm_object_file {int lock; struct drm_open_hash* ref_hash; TYPE_1__* tdev; } ;
struct ttm_mem_global {int dummy; } ;
struct ttm_base_object {int (* ref_obj_release ) (struct ttm_base_object*,size_t) ;} ;
struct drm_open_hash {int dummy; } ;
struct TYPE_2__ {struct ttm_mem_global* mem_glob; } ;


 int M_TTM_OBJ_REF ;
 size_t TTM_REF_USAGE ;
 int drm_ht_remove_item (struct drm_open_hash*,int *) ;
 int free (struct ttm_ref_object*,int ) ;
 int list_del (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int stub1 (struct ttm_base_object*,size_t) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 int ttm_mem_global_free (struct ttm_mem_global*,int) ;

__attribute__((used)) static void ttm_ref_object_release(struct ttm_ref_object *ref)
{
 struct ttm_base_object *base = ref->obj;
 struct ttm_object_file *tfile = ref->tfile;
 struct drm_open_hash *ht;
 struct ttm_mem_global *mem_glob = tfile->tdev->mem_glob;

 ht = &tfile->ref_hash[ref->ref_type];
 (void)drm_ht_remove_item(ht, &ref->hash);
 list_del(&ref->head);
 rw_wunlock(&tfile->lock);

 if (ref->ref_type != TTM_REF_USAGE && base->ref_obj_release)
  base->ref_obj_release(base, ref->ref_type);

 ttm_base_object_unref(&ref->obj);
 ttm_mem_global_free(mem_glob, sizeof(*ref));
 free(ref, M_TTM_OBJ_REF);
 rw_wlock(&tfile->lock);
}
