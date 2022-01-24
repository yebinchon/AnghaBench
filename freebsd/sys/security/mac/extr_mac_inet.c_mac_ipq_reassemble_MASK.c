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
struct ipq {int /*<<< orphan*/  ipq_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ipq*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 int /*<<< orphan*/  ipq_reassemble ; 
 struct label* FUNC1 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 

void
FUNC2(struct ipq *q, struct mbuf *m)
{
	struct label *label;

	if (mac_policy_count == 0)
		return;

	label = FUNC1(m);

	FUNC0(ipq_reassemble, q, q->ipq_label, m,
	    label);
}