
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_names {int lock; int hash_mask; int names_hash; int unr; } ;


 int INT_MAX ;
 int MTX_DEF ;
 int M_GEM_NAMES ;
 int hashinit (int,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int,int ,int *) ;

void
drm_gem_names_init(struct drm_gem_names *names)
{

 names->unr = new_unrhdr(1, INT_MAX, ((void*)0));
 names->names_hash = hashinit(1000 , M_GEM_NAMES,
     &names->hash_mask);
 mtx_init(&names->lock, "drmnames", ((void*)0), MTX_DEF);
}
