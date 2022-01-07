
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;


 int drm_mm_insert_node_generic (struct drm_mm*,struct drm_mm_node*,unsigned long,unsigned int,int ) ;

int drm_mm_insert_node(struct drm_mm *mm, struct drm_mm_node *node,
         unsigned long size, unsigned alignment)
{
 return drm_mm_insert_node_generic(mm, node, size, alignment, 0);
}
