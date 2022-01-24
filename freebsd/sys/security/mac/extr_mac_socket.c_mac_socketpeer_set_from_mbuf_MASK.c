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
struct socket {int /*<<< orphan*/  so_peerlabel; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*,struct label*,struct socket*,int /*<<< orphan*/ ) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  socketpeer_set_from_mbuf ; 

void
FUNC2(struct mbuf *m, struct socket *so)
{
	struct label *label;

	if (mac_policy_count == 0)
		return;

	label = FUNC1(m);

	FUNC0(socketpeer_set_from_mbuf, m, label, so,
	    so->so_peerlabel);
}