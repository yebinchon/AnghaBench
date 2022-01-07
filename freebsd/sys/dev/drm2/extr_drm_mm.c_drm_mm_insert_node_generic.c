
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;


 int ENOSPC ;
 int drm_mm_insert_helper (struct drm_mm_node*,struct drm_mm_node*,unsigned long,unsigned int,unsigned long) ;
 struct drm_mm_node* drm_mm_search_free_generic (struct drm_mm*,unsigned long,unsigned int,unsigned long,int ) ;

int drm_mm_insert_node_generic(struct drm_mm *mm, struct drm_mm_node *node,
          unsigned long size, unsigned alignment,
          unsigned long color)
{
 struct drm_mm_node *hole_node;

 hole_node = drm_mm_search_free_generic(mm, size, alignment,
            color, 0);
 if (!hole_node)
  return -ENOSPC;

 drm_mm_insert_helper(hole_node, node, size, alignment, color);
 return 0;
}
