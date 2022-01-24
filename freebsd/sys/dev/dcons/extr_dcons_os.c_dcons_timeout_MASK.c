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
struct dcons_softc {struct tty* tty; } ;

/* Variables and functions */
 int DCONS_NPORT ; 
 int DCONS_POLL_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct tty*) ; 
 int /*<<< orphan*/  dcons_callout ; 
 int FUNC1 (struct dcons_softc*) ; 
 int hz ; 
 int poll_hz ; 
 int poll_idle ; 
 struct dcons_softc* sc ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 

__attribute__((used)) static void
FUNC6(void *v)
{
	struct	tty *tp;
	struct dcons_softc *dc;
	int i, c, polltime;

	for (i = 0; i < DCONS_NPORT; i ++) {
		dc = &sc[i];
		tp = dc->tty;

		FUNC2(tp);
		while ((c = FUNC1(dc)) != -1) {
			FUNC4(tp, c, 0);
			poll_idle = 0;
		}
		FUNC5(tp);
		FUNC3(tp);
	}
	poll_idle++;
	polltime = hz;
	if (poll_idle <= (poll_hz * DCONS_POLL_IDLE))
		polltime /= poll_hz;
	FUNC0(&dcons_callout, polltime, dcons_timeout, tp);
}