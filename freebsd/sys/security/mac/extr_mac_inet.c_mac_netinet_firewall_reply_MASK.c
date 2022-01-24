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
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct label* FUNC2 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  netinet_firewall_reply ; 

void
FUNC3(struct mbuf *mrecv, struct mbuf *msend)
{
	struct label *mrecvlabel, *msendlabel;

	FUNC1(mrecv);
	FUNC1(msend);

	if (mac_policy_count == 0)
		return;

	mrecvlabel = FUNC2(mrecv);
	msendlabel = FUNC2(msend);

	FUNC0(netinet_firewall_reply, mrecv, mrecvlabel,
	    msend, msendlabel);
}