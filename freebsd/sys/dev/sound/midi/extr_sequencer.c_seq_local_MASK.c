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
typedef  int u_char ;
struct seq_softc {int unit; int /*<<< orphan*/  seq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static int
FUNC3(struct seq_softc *scp, u_char *event)
{
	int ret;

	ret = 0;
	FUNC1(&scp->seq_lock, MA_OWNED);

	FUNC0(5, FUNC2("seq_local: unit %d, cmd %d\n", scp->unit,
	    event[1]));
	switch (event[1]) {
	default:
		FUNC0(1, FUNC2("seq_local event type %d not handled\n",
		    event[1]));
		ret = 1;
		break;
	}
	return ret;
}