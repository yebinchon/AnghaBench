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
struct timespec {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	int f;
	struct timespec ts;

	FUNC0(&ts);
	FUNC1("Uptime: ");
	f = 0;
	if (ts.tv_sec >= 86400) {
		FUNC1("%ldd", (long)ts.tv_sec / 86400);
		ts.tv_sec %= 86400;
		f = 1;
	}
	if (f || ts.tv_sec >= 3600) {
		FUNC1("%ldh", (long)ts.tv_sec / 3600);
		ts.tv_sec %= 3600;
		f = 1;
	}
	if (f || ts.tv_sec >= 60) {
		FUNC1("%ldm", (long)ts.tv_sec / 60);
		ts.tv_sec %= 60;
		f = 1;
	}
	FUNC1("%lds\n", (long)ts.tv_sec);
}