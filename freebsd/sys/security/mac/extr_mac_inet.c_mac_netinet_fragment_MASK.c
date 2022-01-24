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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*,struct label*,struct mbuf*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  netinet_fragment ; 

void
FUNC2(struct mbuf *m, struct mbuf *frag)
{
	struct label *mlabel, *fraglabel;

	if (mac_policy_count == 0)
		return;

	mlabel = FUNC1(m);
	fraglabel = FUNC1(frag);

	FUNC0(netinet_fragment, m, mlabel, frag,
	    fraglabel);
}