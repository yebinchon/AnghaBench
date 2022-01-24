#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct sglist {int sg_maxseg; int sg_nseg; TYPE_1__* sg_segs; } ;
struct hv_sgl_node {struct sglist* sgl_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_use_sgl_list; int /*<<< orphan*/  free_sgl_list; } ;
struct TYPE_3__ {unsigned int ss_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct hv_sgl_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hv_sgl_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_sgl_node*,int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 int WRITE_TYPE ; 
 TYPE_2__ g_hv_sgl_page_pool ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct sglist *
FUNC5(uint16_t seg_count, int write)
{
	int i = 0;
	struct sglist *bounce_sgl = NULL;
	unsigned int buf_len = ((write == WRITE_TYPE) ? 0 : PAGE_SIZE);
	struct hv_sgl_node *sgl_node = NULL;	

	/* get struct sglist from free_sgl_list */
	if (FUNC0(&g_hv_sgl_page_pool.free_sgl_list)) {
		FUNC4("storvsc error: not enough free sgl\n");
		return NULL;
	}
	sgl_node = FUNC1(&g_hv_sgl_page_pool.free_sgl_list);
	FUNC3(sgl_node, link);
	bounce_sgl = sgl_node->sgl_data;
	FUNC2(&g_hv_sgl_page_pool.in_use_sgl_list, sgl_node, link);

	bounce_sgl->sg_maxseg = seg_count;

	if (write == WRITE_TYPE)
		bounce_sgl->sg_nseg = 0;
	else
		bounce_sgl->sg_nseg = seg_count;

	for (i = 0; i < seg_count; i++)
	        bounce_sgl->sg_segs[i].ss_len = buf_len;

	return bounce_sgl;
}