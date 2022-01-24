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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_long ;
typedef  size_t u_int ;
struct tte {int dummy; } ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TSB_BUCKET_SIZE ; 
 scalar_t__ TS_MAX ; 
 scalar_t__ TS_MIN ; 
 scalar_t__ kernel_pmap ; 
 struct tte* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsb_nlookup_k ; 
 int /*<<< orphan*/  tsb_nlookup_u ; 
 struct tte* FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tte*,int /*<<< orphan*/ ) ; 

struct tte *
FUNC5(pmap_t pm, vm_offset_t va)
{
	struct tte *bucket;
	struct tte *tp;
	u_long sz;
	u_int i;

	if (pm == kernel_pmap) {
		FUNC1(tsb_nlookup_k);
		tp = FUNC2(va);
		if (FUNC4(tp, va))
			return (tp);
	} else {
		FUNC0(pm, MA_OWNED);
		FUNC1(tsb_nlookup_u);
		for (sz = TS_MIN; sz <= TS_MAX; sz++) {
			bucket = FUNC3(pm, sz, va);
			for (i = 0; i < TSB_BUCKET_SIZE; i++) {
				tp = &bucket[i];
				if (FUNC4(tp, va))
					return (tp);
			}
		}
	}
	return (NULL);
}