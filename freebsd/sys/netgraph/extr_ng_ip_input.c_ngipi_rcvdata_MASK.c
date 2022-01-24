#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_2__ {scalar_t__ td_ng_outbound; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETISR_IP ; 
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(hook_p hook, item_p item)
{
	struct mbuf *m;

	FUNC2(item, m);
	FUNC3(item);
	if (curthread->td_ng_outbound)
		FUNC5(NETISR_IP, m);
	else {
		struct epoch_tracker et;

		FUNC0(et);
		FUNC4(NETISR_IP, m);
		FUNC1(et);
	}
	return 0;
}