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
struct seq_softc {int /*<<< orphan*/  in_cv; int /*<<< orphan*/  in_sel; int /*<<< orphan*/  in_q; int /*<<< orphan*/  seq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct seq_softc *scp, u_char *event, int len)
{

	FUNC4(&scp->seq_lock, MA_OWNED);

	if (FUNC0(scp->in_q) < len) {
		/*
	         * ENOROOM?  EINPUTDROPPED? ETOUGHLUCK?
	         */
		FUNC2(2, FUNC5("seq_copytoinput: queue full\n"));
	} else {
		FUNC1(scp->in_q, event, len);
		FUNC6(&scp->in_sel);
		FUNC3(&scp->in_cv);
	}

}