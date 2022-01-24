#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sglist {int dummy; } ;
struct hv_sgl_node {struct sglist* sgl_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_sgl_list; int /*<<< orphan*/  in_use_sgl_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct hv_sgl_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hv_sgl_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_sgl_node*,int /*<<< orphan*/ ) ; 
 TYPE_1__ g_hv_sgl_page_pool ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct sglist *sgl)
{
	struct hv_sgl_node *sgl_node = NULL;
	if (FUNC0(&g_hv_sgl_page_pool.in_use_sgl_list)) {
		FUNC4("storvsc error: not enough in use sgl\n");
		return;
	}
	sgl_node = FUNC1(&g_hv_sgl_page_pool.in_use_sgl_list);
	FUNC3(sgl_node, link);
	sgl_node->sgl_data = sgl;
	FUNC2(&g_hv_sgl_page_pool.free_sgl_list, sgl_node, link);
}