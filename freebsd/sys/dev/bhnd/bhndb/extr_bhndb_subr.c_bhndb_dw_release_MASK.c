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
struct resource {int dummy; } ;
struct bhndb_resources {int /*<<< orphan*/  dwa_freelist; } ;
struct bhndb_dw_rentry {int dummy; } ;
struct bhndb_dw_alloc {int /*<<< orphan*/  rnid; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_dw_rentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_BHND ; 
 struct bhndb_dw_rentry* FUNC3 (struct bhndb_dw_alloc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw_link ; 
 int /*<<< orphan*/  FUNC5 (struct bhndb_dw_rentry*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct bhndb_resources *br, struct bhndb_dw_alloc *dwa,
    struct resource *r)
{
	struct bhndb_dw_rentry	*rentry;

	/* Find the rentry */
	rentry = FUNC3(dwa, r);
	FUNC0(rentry != NULL, ("over release of resource entry"));

	FUNC2(rentry, dw_link);
	FUNC5(rentry, M_BHND);

	/* If this was the last reference, update the free list */
	if (FUNC1(&dwa->refs))
		FUNC4(br->dwa_freelist, dwa->rnid);
}