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
typedef  scalar_t__ vm_offset_t ;
struct sf_buf {scalar_t__ kva; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NSFBUFS ; 
 int PAGE_SIZE ; 
 scalar_t__ PMAP_HAS_DMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sf_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  free_entry ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 struct sf_buf* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int nsfbufs ; 
 int /*<<< orphan*/  sf_buf_active ; 
 scalar_t__ sf_buf_alloc_want ; 
 int /*<<< orphan*/  sf_buf_freelist ; 
 int /*<<< orphan*/  sf_buf_hashmask ; 
 int /*<<< orphan*/  sf_buf_lock ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct sf_buf *sf_bufs;
	vm_offset_t sf_base;
	int i;

	if (PMAP_HAS_DMAP)
		return;

	nsfbufs = NSFBUFS;
	FUNC2("kern.ipc.nsfbufs", &nsfbufs);

	sf_buf_active = FUNC3(nsfbufs, M_TEMP, &sf_buf_hashmask);
	FUNC0(&sf_buf_freelist);
	sf_base = FUNC4(nsfbufs * PAGE_SIZE);
	sf_bufs = FUNC5(nsfbufs * sizeof(struct sf_buf), M_TEMP,
	    M_WAITOK | M_ZERO);
	for (i = 0; i < nsfbufs; i++) {
		sf_bufs[i].kva = sf_base + i * PAGE_SIZE;
		FUNC1(&sf_buf_freelist, &sf_bufs[i], free_entry);
	}
	sf_buf_alloc_want = 0;
	FUNC6(&sf_buf_lock, "sf_buf", NULL, MTX_DEF);
}