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
struct ttyinq_block {int dummy; } ;
struct ttyinq {scalar_t__ ti_nblocks; struct ttyinq_block* ti_firstblock; scalar_t__ ti_quota; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ttyinq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttyinq*) ; 
 int /*<<< orphan*/  ttyinq_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ttyinq_block*) ; 

void
FUNC4(struct ttyinq *ti)
{
	struct ttyinq_block *tib;

	FUNC2(ti);
	ti->ti_quota = 0;

	while ((tib = ti->ti_firstblock) != NULL) {
		FUNC1(ti);
		FUNC3(ttyinq_zone, tib);
	}

	FUNC0(ti->ti_nblocks == 0);
}