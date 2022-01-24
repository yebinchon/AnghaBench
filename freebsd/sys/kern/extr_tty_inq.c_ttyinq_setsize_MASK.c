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
struct ttyinq {scalar_t__ ti_quota; scalar_t__ ti_nblocks; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  TTYINQ_DATASIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ttyinq*,struct ttyinq_block*) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  ttyinq_zone ; 
 struct ttyinq_block* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ttyinq_block*) ; 

int 
FUNC7(struct ttyinq *ti, struct tty *tp, size_t size)
{
	struct ttyinq_block *tib;

	ti->ti_quota = FUNC1(size, TTYINQ_DATASIZE);

	while (ti->ti_quota > ti->ti_nblocks) {
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
		tib = FUNC5(ttyinq_zone, M_WAITOK);
		FUNC3(tp);

		if (FUNC2(tp)) {
			FUNC6(ttyinq_zone, tib);
			return (ENXIO);
		}

		FUNC0(ti, tib);
	}
	return (0);
}