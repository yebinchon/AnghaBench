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
struct mac_policy_conf {int dummy; } ;

/* Variables and functions */
 int MAC_BSDEXTENDED_MAXRULES ; 
 int /*<<< orphan*/  M_MACBSDEXTENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** rules ; 
 int /*<<< orphan*/  ugidfw_mtx ; 

__attribute__((used)) static void
FUNC2(struct mac_policy_conf *mpc)
{
	int i;

	for (i = 0; i < MAC_BSDEXTENDED_MAXRULES; i++) {
		if (rules[i] != NULL)
			FUNC0(rules[i], M_MACBSDEXTENDED);
	}
	FUNC1(&ugidfw_mtx);
}