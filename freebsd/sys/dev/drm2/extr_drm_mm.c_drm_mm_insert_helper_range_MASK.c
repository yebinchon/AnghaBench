#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_mm_node {int hole_follows; int allocated; unsigned long start; unsigned long size; unsigned long color; int /*<<< orphan*/  hole_stack; int /*<<< orphan*/  node_list; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  hole_stack; int /*<<< orphan*/  (* color_adjust ) (struct drm_mm_node*,unsigned long,unsigned long*,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (struct drm_mm_node*) ; 
 unsigned long FUNC3 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_mm_node*,unsigned long,unsigned long*,unsigned long*) ; 

__attribute__((used)) static void FUNC7(struct drm_mm_node *hole_node,
				       struct drm_mm_node *node,
				       unsigned long size, unsigned alignment,
				       unsigned long color,
				       unsigned long start, unsigned long end)
{
	struct drm_mm *mm = hole_node->mm;
	unsigned long hole_start = FUNC3(hole_node);
	unsigned long hole_end = FUNC2(hole_node);
	unsigned long adj_start = hole_start;
	unsigned long adj_end = hole_end;

	FUNC0(!hole_node->hole_follows || node->allocated);

	if (adj_start < start)
		adj_start = start;
	if (adj_end > end)
		adj_end = end;

	if (mm->color_adjust)
		mm->color_adjust(hole_node, color, &adj_start, &adj_end);

	if (alignment) {
		unsigned tmp = adj_start % alignment;
		if (tmp)
			adj_start += alignment - tmp;
	}

	if (adj_start == hole_start) {
		hole_node->hole_follows = 0;
		FUNC5(&hole_node->hole_stack);
	}

	node->start = adj_start;
	node->size = size;
	node->mm = mm;
	node->color = color;
	node->allocated = 1;

	FUNC1(&node->hole_stack);
	FUNC4(&node->node_list, &hole_node->node_list);

	FUNC0(node->start + node->size > adj_end);
	FUNC0(node->start + node->size > end);

	node->hole_follows = 0;
	if (node->start + node->size < hole_end) {
		FUNC4(&node->hole_stack, &mm->hole_stack);
		node->hole_follows = 1;
	}
}