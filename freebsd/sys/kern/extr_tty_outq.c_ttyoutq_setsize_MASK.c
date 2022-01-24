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
struct ttyoutq {scalar_t__ to_quota; scalar_t__ to_nblocks; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  TTYOUTQ_DATASIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ttyoutq*,struct ttyoutq_block*) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  ttyoutq_zone ; 
 struct ttyoutq_block* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ttyoutq_block*) ; 

int
FUNC7(struct ttyoutq *to, struct tty *tp, size_t size)
{
	struct ttyoutq_block *tob;

	to->to_quota = FUNC1(size, TTYOUTQ_DATASIZE);

	while (to->to_quota > to->to_nblocks) {
		/*
		 * List is getting bigger.
		 * Add new blocks to the tail of the list.
		 *
		 * We must unlock the TTY temporarily, because we need
		 * to allocate memory. This won't be a problem, because
		 * in the worst case, another thread ends up here, which
		 * may cause us to allocate too many blocks, but this
		 * will be caught by the loop below.
		 */
		FUNC4(tp);
		tob = FUNC5(ttyoutq_zone, M_WAITOK);
		FUNC3(tp);

		if (FUNC2(tp)) {
			FUNC6(ttyoutq_zone, tob);
			return (ENXIO);
		}

		FUNC0(to, tob);
	}
	return (0);
}