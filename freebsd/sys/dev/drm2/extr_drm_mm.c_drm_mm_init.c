
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hole_follows; unsigned long start; unsigned long size; int hole_stack; struct drm_mm* mm; scalar_t__ scanned_next_free; scalar_t__ scanned_prev_free; scalar_t__ scanned_block; int node_list; } ;
struct drm_mm {int * color_adjust; int hole_stack; TYPE_1__ head_node; int unused_lock; scalar_t__ scanned_blocks; scalar_t__ num_unused; int unused_nodes; } ;


 int INIT_LIST_HEAD (int *) ;
 int MTX_DEF ;
 int list_add_tail (int *,int *) ;
 int mtx_init (int *,char*,int *,int ) ;

int drm_mm_init(struct drm_mm * mm, unsigned long start, unsigned long size)
{
 INIT_LIST_HEAD(&mm->hole_stack);
 INIT_LIST_HEAD(&mm->unused_nodes);
 mm->num_unused = 0;
 mm->scanned_blocks = 0;
 mtx_init(&mm->unused_lock, "drm_unused", ((void*)0), MTX_DEF);


 INIT_LIST_HEAD(&mm->head_node.node_list);
 INIT_LIST_HEAD(&mm->head_node.hole_stack);
 mm->head_node.hole_follows = 1;
 mm->head_node.scanned_block = 0;
 mm->head_node.scanned_prev_free = 0;
 mm->head_node.scanned_next_free = 0;
 mm->head_node.mm = mm;
 mm->head_node.start = start + size;
 mm->head_node.size = start - mm->head_node.start;
 list_add_tail(&mm->head_node.hole_stack, &mm->hole_stack);

 mm->color_adjust = ((void*)0);

 return 0;
}
