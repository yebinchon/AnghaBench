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
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_TTYCONS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * consbuf ; 
 int /*<<< orphan*/  conscallout ; 
 int /*<<< orphan*/  consmsgbuf ; 
 int consmsgbuf_size ; 
 struct tty* constty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC5(struct tty *tp)
{
	int size;

	FUNC0(tp != NULL, ("constty_set: NULL tp"));
	if (consbuf == NULL) {
		size = consmsgbuf_size;
		consbuf = FUNC3(size, M_TTYCONS, M_WAITOK);
		FUNC4(&consmsgbuf, consbuf, size);
		FUNC1(&conscallout, 0);
	}
	constty = tp;
	FUNC2(NULL);
}