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
struct tcp_hpts_entry {int p_hpts_wake_scheduled; int /*<<< orphan*/  ie_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_hpts_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct tcp_hpts_entry *hpts)
{
	FUNC0(hpts);
	if (hpts->p_hpts_wake_scheduled == 0) {
		hpts->p_hpts_wake_scheduled = 1;
		FUNC1(hpts->ie_cookie, 0);
	}
}