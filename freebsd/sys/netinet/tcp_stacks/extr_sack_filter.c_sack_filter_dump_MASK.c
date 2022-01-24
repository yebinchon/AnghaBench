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
struct sack_filter {int sf_ack; int sf_bits; int sf_cur; int sf_used; TYPE_1__* sf_blks; } ;
struct TYPE_2__ {int start; int end; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SACK_FILTER_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,...) ; 
 scalar_t__ FUNC1 (struct sack_filter*,int) ; 

__attribute__((used)) static void
FUNC2(FILE *out, struct sack_filter *sf)
{
	int i;
	FUNC0(out, "	sf_ack:%u sf_bits:0x%x c:%d used:%d\n",
		sf->sf_ack, sf->sf_bits,
		sf->sf_cur, sf->sf_used);

	for(i=0; i<SACK_FILTER_BLOCKS; i++) {
		if (FUNC1(sf, i)) {
			FUNC0(out, "Entry:%d start:%u end:%u\n", i,
			       sf->sf_blks[i].start,
			       sf->sf_blks[i].end);
		}
	}
}