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
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct seq_softc *scp, kobj_t md, u_char *event)
{
	int i, l;

	FUNC2(&scp->seq_lock, MA_OWNED);
	FUNC0(5, FUNC5("seq_sysex: unit %d device %d\n", scp->unit,
	    event[1]));
	l = 0;
	for (i = 0; i < 6 && event[i + 2] != 0xff; i++)
		l = i + 1;
	if (l > 0) {
		FUNC4(&scp->seq_lock);
		if (FUNC1(md, &event[2], l) == EAGAIN) {
			FUNC3(&scp->seq_lock);
			return 1;
		}
		FUNC3(&scp->seq_lock);
	}
	return 0;
}