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
struct ttyoutq_block {int dummy; } ;
struct ttyoutq {scalar_t__ to_nblocks; struct ttyoutq_block* to_firstblock; scalar_t__ to_quota; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ttyoutq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttyoutq*) ; 
 int /*<<< orphan*/  ttyoutq_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ttyoutq_block*) ; 

void
FUNC4(struct ttyoutq *to)
{
	struct ttyoutq_block *tob;

	FUNC2(to);
	to->to_quota = 0;

	while ((tob = to->to_firstblock) != NULL) {
		FUNC1(to);
		FUNC3(ttyoutq_zone, tob);
	}

	FUNC0(to->to_nblocks == 0);
}