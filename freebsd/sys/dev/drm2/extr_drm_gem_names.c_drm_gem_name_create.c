
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_names {int lock; int unr; } ;
struct drm_gem_name {int name; void* ptr; } ;


 int EALREADY ;
 int ENOMEM ;
 int LIST_INSERT_HEAD (int ,struct drm_gem_name*,int ) ;
 int M_GEM_NAMES ;
 int M_WAITOK ;
 int alloc_unr (int ) ;
 int free (struct drm_gem_name*,int ) ;
 int gem_name_hash_index (struct drm_gem_names*,int) ;
 int link ;
 struct drm_gem_name* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
drm_gem_name_create(struct drm_gem_names *names, void *p, uint32_t *name)
{
 struct drm_gem_name *np;

 if (*name != 0) {
  return (-EALREADY);
 }

 np = malloc(sizeof(struct drm_gem_name), M_GEM_NAMES, M_WAITOK);
 mtx_lock(&names->lock);
 np->name = alloc_unr(names->unr);
 if (np->name == -1) {
  mtx_unlock(&names->lock);
  free(np, M_GEM_NAMES);
  return (-ENOMEM);
 }
 *name = np->name;
 np->ptr = p;
 LIST_INSERT_HEAD(gem_name_hash_index(names, np->name), np, link);
 mtx_unlock(&names->lock);
 return (0);
}
