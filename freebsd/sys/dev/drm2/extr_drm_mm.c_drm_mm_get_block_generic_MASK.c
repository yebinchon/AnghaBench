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
struct drm_mm_node {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*,struct drm_mm_node*,unsigned long,unsigned int,unsigned long) ; 
 struct drm_mm_node* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct drm_mm_node *FUNC3(struct drm_mm_node *hole_node,
					     unsigned long size,
					     unsigned alignment,
					     unsigned long color,
					     int atomic)
{
	struct drm_mm_node *node;

	node = FUNC1(hole_node->mm, atomic);
	if (FUNC2(node == NULL))
		return NULL;

	FUNC0(hole_node, node, size, alignment, color);

	return node;
}