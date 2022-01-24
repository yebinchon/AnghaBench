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
struct sack_filter {int /*<<< orphan*/  sf_used; int /*<<< orphan*/  sf_bits; TYPE_1__* sf_blks; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sack_filter*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct sack_filter *sf, int32_t src, int32_t into)
{
	if (FUNC1(sf->sf_blks[src].start, sf->sf_blks[into].start)) {
		/* src has a lower starting point */
		sf->sf_blks[into].start = sf->sf_blks[src].start;
	}
	if (FUNC0(sf->sf_blks[src].end, sf->sf_blks[into].end)) {
		/* src has a higher ending point */
		sf->sf_blks[into].end = sf->sf_blks[src].end;
	}
	sf->sf_bits = FUNC2(sf, src);
	sf->sf_used--;
}