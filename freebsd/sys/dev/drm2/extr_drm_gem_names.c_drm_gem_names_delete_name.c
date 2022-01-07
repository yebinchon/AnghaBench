
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_names {int unr; int lock; } ;
struct drm_gem_name {int name; } ;


 int LIST_REMOVE (struct drm_gem_name*,int ) ;
 int MA_OWNED ;
 int M_GEM_NAMES ;
 int free (struct drm_gem_name*,int ) ;
 int free_unr (int ,int ) ;
 int link ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
drm_gem_names_delete_name(struct drm_gem_names *names, struct drm_gem_name *np)
{

 mtx_assert(&names->lock, MA_OWNED);
 LIST_REMOVE(np, link);
 mtx_unlock(&names->lock);
 free_unr(names->unr, np->name);
 free(np, M_GEM_NAMES);
}
