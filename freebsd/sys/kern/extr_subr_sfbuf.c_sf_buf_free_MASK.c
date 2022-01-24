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
struct sf_buf {scalar_t__ ref_count; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sf_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_HAS_DMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sf_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_entry ; 
 int /*<<< orphan*/  list_entry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsfbufsused ; 
 scalar_t__ sf_buf_alloc_want ; 
 int /*<<< orphan*/  sf_buf_freelist ; 
 int /*<<< orphan*/  sf_buf_lock ; 
 scalar_t__ FUNC4 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct sf_buf *sf)
{

	if (PMAP_HAS_DMAP)
		return;

	FUNC2(&sf_buf_lock);
	sf->ref_count--;
	if (sf->ref_count == 0) {
		FUNC1(&sf_buf_freelist, sf, free_entry);
		nsfbufsused--;
		if (FUNC4(sf)) {
			sf->m = NULL;
			FUNC0(sf, list_entry);
		}
		if (sf_buf_alloc_want > 0)
			FUNC5(&sf_buf_freelist);
	}
	FUNC3(&sf_buf_lock);
}