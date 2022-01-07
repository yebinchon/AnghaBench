
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;


 int drm_mm_insert_node_in_range_generic (struct drm_mm*,struct drm_mm_node*,unsigned long,unsigned int,int ,unsigned long,unsigned long) ;

int drm_mm_insert_node_in_range(struct drm_mm *mm, struct drm_mm_node *node,
    unsigned long size, unsigned alignment,
    unsigned long start, unsigned long end)
{
 return drm_mm_insert_node_in_range_generic(mm, node, size, alignment, 0, start, end);
}
