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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int /*<<< orphan*/  ip6q_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*,struct label*,struct ip6q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip6q_update ; 
 struct label* FUNC1 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 

void
FUNC2(struct mbuf *m, struct ip6q *q6)
{
	struct label *label;

	if (mac_policy_count == 0)
		return;

	label = FUNC1(m);

	FUNC0(ip6q_update, m, label, q6,
	    q6->ip6q_label);
}