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
struct t4_range {int size; int start; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  mem_ranges ;

/* Variables and functions */
 int /*<<< orphan*/  A_MA_EDRAM0_BAR ; 
 int /*<<< orphan*/  A_MA_EDRAM1_BAR ; 
 int /*<<< orphan*/  A_MA_EXT_MEMORY1_BAR ; 
 int /*<<< orphan*/  A_MA_EXT_MEMORY_BAR ; 
 int /*<<< orphan*/  A_MA_TARGET_MEM_ENABLE ; 
 int EFAULT ; 
 int EINVAL ; 
 int F_EDRAM0_ENABLE ; 
 int F_EDRAM1_ENABLE ; 
 int F_EXT_MEM1_ENABLE ; 
 int F_EXT_MEM_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct t4_range*,int) ; 
 scalar_t__ FUNC10 (struct adapter*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct t4_range*,struct t4_range*,int) ; 
 int FUNC13 (struct t4_range*) ; 
 int /*<<< orphan*/  FUNC14 (struct t4_range*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t4_range_cmp ; 
 int FUNC15 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct adapter *sc, uint32_t addr, uint32_t len)
{
	struct t4_range mem_ranges[4], *r, *next;
	uint32_t em, addr_len;
	int i, n, remaining;

	/* Memory can only be accessed in naturally aligned 4 byte units */
	if (addr & 3 || len & 3 || len == 0)
		return (EINVAL);

	/* Enabled memories */
	em = FUNC15(sc, A_MA_TARGET_MEM_ENABLE);

	r = &mem_ranges[0];
	n = 0;
	FUNC9(r, sizeof(mem_ranges));
	if (em & F_EDRAM0_ENABLE) {
		addr_len = FUNC15(sc, A_MA_EDRAM0_BAR);
		r->size = FUNC1(addr_len) << 20;
		if (r->size > 0) {
			r->start = FUNC0(addr_len) << 20;
			if (addr >= r->start &&
			    addr + len <= r->start + r->size)
				return (0);
			r++;
			n++;
		}
	}
	if (em & F_EDRAM1_ENABLE) {
		addr_len = FUNC15(sc, A_MA_EDRAM1_BAR);
		r->size = FUNC3(addr_len) << 20;
		if (r->size > 0) {
			r->start = FUNC2(addr_len) << 20;
			if (addr >= r->start &&
			    addr + len <= r->start + r->size)
				return (0);
			r++;
			n++;
		}
	}
	if (em & F_EXT_MEM_ENABLE) {
		addr_len = FUNC15(sc, A_MA_EXT_MEMORY_BAR);
		r->size = FUNC7(addr_len) << 20;
		if (r->size > 0) {
			r->start = FUNC6(addr_len) << 20;
			if (addr >= r->start &&
			    addr + len <= r->start + r->size)
				return (0);
			r++;
			n++;
		}
	}
	if (FUNC10(sc) && em & F_EXT_MEM1_ENABLE) {
		addr_len = FUNC15(sc, A_MA_EXT_MEMORY1_BAR);
		r->size = FUNC5(addr_len) << 20;
		if (r->size > 0) {
			r->start = FUNC4(addr_len) << 20;
			if (addr >= r->start &&
			    addr + len <= r->start + r->size)
				return (0);
			r++;
			n++;
		}
	}
	FUNC8(n <= FUNC13(mem_ranges));

	if (n > 1) {
		/* Sort and merge the ranges. */
		FUNC14(mem_ranges, n, sizeof(struct t4_range), t4_range_cmp);

		/* Start from index 0 and examine the next n - 1 entries. */
		r = &mem_ranges[0];
		for (remaining = n - 1; remaining > 0; remaining--, r++) {

			FUNC8(r->size > 0);	/* r is a valid entry. */
			next = r + 1;
			FUNC8(next->size > 0);	/* and so is the next one. */

			while (r->start + r->size >= next->start) {
				/* Merge the next one into the current entry. */
				r->size = FUNC11(r->start + r->size,
				    next->start + next->size) - r->start;
				n--;	/* One fewer entry in total. */
				if (--remaining == 0)
					goto done;	/* short circuit */
				next++;
			}
			if (next != r + 1) {
				/*
				 * Some entries were merged into r and next
				 * points to the first valid entry that couldn't
				 * be merged.
				 */
				FUNC8(next->size > 0);	/* must be valid */
				FUNC12(r + 1, next, remaining * sizeof(*r));
#ifdef INVARIANTS
				/*
				 * This so that the foo->size assertion in the
				 * next iteration of the loop do the right
				 * thing for entries that were pulled up and are
				 * no longer valid.
				 */
				MPASS(n < nitems(mem_ranges));
				bzero(&mem_ranges[n], (nitems(mem_ranges) - n) *
				    sizeof(struct t4_range));
#endif
			}
		}
done:
		/* Done merging the ranges. */
		FUNC8(n > 0);
		r = &mem_ranges[0];
		for (i = 0; i < n; i++, r++) {
			if (addr >= r->start &&
			    addr + len <= r->start + r->size)
				return (0);
		}
	}

	return (EFAULT);
}