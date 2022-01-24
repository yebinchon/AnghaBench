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
typedef  int uint32_t ;
struct nat64lsn_pgchunk {struct nat64lsn_pg** pgptr; } ;
struct nat64lsn_pg {int dummy; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nat64lsn_pg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int NAT64LSN_TRY_PGCNT ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nat64lsn_pg**,struct nat64lsn_pg*,struct nat64lsn_pg*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int*) ; 
 struct nat64lsn_pg* FUNC6 (struct nat64lsn_pg**) ; 

__attribute__((used)) static struct nat64lsn_pg*
FUNC7(uint32_t *chunkmask, uint32_t *pgmask,
    struct nat64lsn_pgchunk **chunks, struct nat64lsn_pg **pgptr,
    uint32_t *pgidx, in_addr_t faddr)
{
	struct nat64lsn_pg *pg, *oldpg;
	uint32_t idx, oldidx;
	int cnt;

	cnt = 0;
	/* First try last used PG */
	oldpg = pg = FUNC6(pgptr);
	idx = oldidx = FUNC5(pgidx);
	/* If pgidx is out of range, reset it to the first pgchunk */
	if (!FUNC1(*chunkmask, idx / 32))
		idx = 0;
	do {
		FUNC4();
		if (pg != NULL && FUNC0(pg, faddr) > 0) {
			/*
			 * If last used PG has not free states,
			 * try to update pointer.
			 * NOTE: it can be already updated by jobs handler,
			 *	 thus we use CAS operation.
			 */
			if (cnt > 0)
				FUNC3(pgptr, oldpg, pg);
			return (pg);
		}
		/* Stop if idx is out of range */
		if (!FUNC1(*chunkmask, idx / 32))
			break;

		if (FUNC1(pgmask[idx / 32], idx % 32))
			pg = FUNC6(
			    &chunks[idx / 32]->pgptr[idx % 32]);
		else
			pg = NULL;

		idx++;
	} while (++cnt < NAT64LSN_TRY_PGCNT);

	/* If pgidx is out of range, reset it to the first pgchunk */
	if (!FUNC1(*chunkmask, idx / 32))
		idx = 0;
	FUNC2(pgidx, oldidx, idx);
	return (NULL);
}