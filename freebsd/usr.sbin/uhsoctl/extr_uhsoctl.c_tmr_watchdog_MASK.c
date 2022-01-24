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
struct timespec {scalar_t__ tv_sec; } ;
struct ctx {int flags; scalar_t__ watchdog; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FLG_WATCHDOG ; 
 int FLG_WDEXP ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  timers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,void (*) (int,void*),struct ctx*) ; 

__attribute__((used)) static void
FUNC5(int id, void *arg)
{
	struct ctx *ctx = arg;
	pid_t self;
	struct timespec tp;

	FUNC4(&timers, 1, 5, tmr_watchdog, ctx);

	if (!(ctx->flags & FLG_WATCHDOG))
		return;

	FUNC0(CLOCK_MONOTONIC, &tp);

	if (tp.tv_sec >= ctx->watchdog) {
#ifdef DEBUG
		fprintf(stderr, "Watchdog expired\n");
#endif
		ctx->flags |= FLG_WDEXP;
		self = FUNC2();
		FUNC3(self, SIGHUP);	
	}
}