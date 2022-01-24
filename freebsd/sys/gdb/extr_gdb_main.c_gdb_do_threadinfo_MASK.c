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
struct thread {int /*<<< orphan*/  td_tid; } ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 struct thread* FUNC6 (struct thread*) ; 

__attribute__((used)) static void
FUNC7(struct thread **thr_iter)
{
	static struct thread * const done_sentinel = (void *)(uintptr_t)1;
	static const size_t tidsz_hex = sizeof(lwpid_t) * 2;
	size_t tds_sent;

	if (*thr_iter == NULL) {
		FUNC3(ENXIO);
		return;
	}

	if (*thr_iter == done_sentinel) {
		FUNC0('l');
		*thr_iter = NULL;
		goto sendit;
	}

	FUNC0('m');

	for (tds_sent = 0;
	    *thr_iter != NULL && FUNC5(tidsz_hex + 1);
	    *thr_iter = FUNC6(*thr_iter), tds_sent++) {
		if (tds_sent > 0)
			FUNC1(',');
		FUNC4((*thr_iter)->td_tid);
	}

	/*
	 * Can't send EOF and "some" in same packet, so set a sentinel to send
	 * EOF when GDB asks us next.
	 */
	if (*thr_iter == NULL && tds_sent > 0)
		*thr_iter = done_sentinel;

sendit:
	FUNC2();
}