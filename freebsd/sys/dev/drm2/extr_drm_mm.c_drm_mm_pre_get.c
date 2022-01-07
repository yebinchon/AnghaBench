
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int node_list; } ;
struct drm_mm {int num_unused; int unused_lock; int unused_nodes; } ;


 int DRM_MEM_MM ;
 int ENOMEM ;
 int MM_UNUSED_TARGET ;
 int M_NOWAIT ;
 int M_ZERO ;
 int list_add_tail (int *,int *) ;
 struct drm_mm_node* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int drm_mm_pre_get(struct drm_mm *mm)
{
 struct drm_mm_node *node;

 mtx_lock(&mm->unused_lock);
 while (mm->num_unused < MM_UNUSED_TARGET) {
  mtx_unlock(&mm->unused_lock);
  node = malloc(sizeof(*node), DRM_MEM_MM, M_NOWAIT | M_ZERO);
  mtx_lock(&mm->unused_lock);

  if (unlikely(node == ((void*)0))) {
   int ret = (mm->num_unused < 2) ? -ENOMEM : 0;
   mtx_unlock(&mm->unused_lock);
   return ret;
  }
  ++mm->num_unused;
  list_add_tail(&node->node_list, &mm->unused_nodes);
 }
 mtx_unlock(&mm->unused_lock);
 return 0;
}
