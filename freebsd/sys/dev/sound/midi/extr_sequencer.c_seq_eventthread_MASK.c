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
typedef  int /*<<< orphan*/  u_char ;
struct seq_softc {scalar_t__ done; scalar_t__ playing; scalar_t__ out_water; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  th_cv; int /*<<< orphan*/  out_sel; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  out_q; int /*<<< orphan*/  empty_cv; int /*<<< orphan*/  state_cv; } ;

/* Variables and functions */
 int EV_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct seq_softc *scp = arg;
	u_char event[EV_SZ];

	FUNC7(&scp->seq_lock);
	FUNC3(2, FUNC9("seq_eventthread started\n"));
	while (scp->done == 0) {
restart:
		while (scp->playing == 0) {
			FUNC5(&scp->state_cv, &scp->seq_lock);
			if (scp->done)
				goto done;
		}

		while (FUNC2(scp->out_q)) {
			FUNC4(&scp->empty_cv);
			FUNC5(&scp->out_cv, &scp->seq_lock);
			if (scp->playing == 0)
				goto restart;
			if (scp->done)
				goto done;
		}

		FUNC1(scp->out_q, event, EV_SZ);

		if (FUNC0(scp->out_q) < scp->out_water) {
			FUNC4(&scp->out_cv);
			FUNC10(&scp->out_sel);
		}
		FUNC11(scp, event);
	}

done:
	FUNC4(&scp->th_cv);
	FUNC8(&scp->seq_lock);
	FUNC3(2, FUNC9("seq_eventthread finished\n"));
	FUNC6(0);
}