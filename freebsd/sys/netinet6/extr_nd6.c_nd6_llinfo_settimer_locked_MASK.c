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
struct llentry {long ln_ntick; int /*<<< orphan*/  lle_timer; scalar_t__ la_expire; } ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int FUNC3 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ,struct llentry*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 long hz ; 
 int /*<<< orphan*/  nd6_llinfo_timer ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static void
FUNC5(struct llentry *ln, long tick)
{
	int canceled;

	FUNC2(ln);

	if (tick < 0) {
		ln->la_expire = 0;
		ln->ln_ntick = 0;
		canceled = FUNC4(&ln->lle_timer);
	} else {
		ln->la_expire = time_uptime + tick / hz;
		FUNC0(ln);
		if (tick > INT_MAX) {
			ln->ln_ntick = tick - INT_MAX;
			canceled = FUNC3(&ln->lle_timer, INT_MAX,
			    nd6_llinfo_timer, ln);
		} else {
			ln->ln_ntick = 0;
			canceled = FUNC3(&ln->lle_timer, tick,
			    nd6_llinfo_timer, ln);
		}
	}
	if (canceled > 0)
		FUNC1(ln);
}