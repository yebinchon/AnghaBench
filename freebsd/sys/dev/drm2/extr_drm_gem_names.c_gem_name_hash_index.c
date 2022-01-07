
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_names_head {int dummy; } ;
struct drm_gem_names {int hash_mask; struct drm_gem_names_head* names_hash; } ;



__attribute__((used)) static struct drm_gem_names_head *
gem_name_hash_index(struct drm_gem_names *names, int name)
{

 return (&names->names_hash[name & names->hash_mask]);
}
