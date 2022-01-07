
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_names {int hash_mask; int unr; int * names_hash; int lock; } ;
struct drm_gem_name {int dummy; } ;


 struct drm_gem_name* LIST_FIRST (int *) ;
 int M_GEM_NAMES ;
 int delete_unrhdr (int ) ;
 int drm_gem_names_delete_name (struct drm_gem_names*,struct drm_gem_name*) ;
 int hashdestroy (int *,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
drm_gem_names_fini(struct drm_gem_names *names)
{
 struct drm_gem_name *np;
 int i;

 mtx_lock(&names->lock);
 for (i = 0; i <= names->hash_mask; i++) {
  while ((np = LIST_FIRST(&names->names_hash[i])) != ((void*)0)) {
   drm_gem_names_delete_name(names, np);
   mtx_lock(&names->lock);
  }
 }
 mtx_unlock(&names->lock);
 mtx_destroy(&names->lock);
 hashdestroy(names->names_hash, M_GEM_NAMES, names->hash_mask);
 delete_unrhdr(names->unr);
}
