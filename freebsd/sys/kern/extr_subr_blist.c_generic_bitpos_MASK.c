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
typedef  int u_daddr_t ;

/* Variables and functions */
 int BLIST_BMAP_RADIX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC1(u_daddr_t mask)
{
	int hi, lo, mid;

	lo = 0;
	hi = BLIST_BMAP_RADIX;
	while (lo + 1 < hi) {
		mid = (lo + hi) >> 1;
		if (mask & FUNC0(0, mid))
			hi = mid;
		else
			lo = mid;
	}
	return (lo);
}