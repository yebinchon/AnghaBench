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
struct inpcb {int /*<<< orphan*/  inp_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inpcb*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 int /*<<< orphan*/  inpcb_create_mbuf ; 
 struct label* FUNC2 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 

void
FUNC3(struct inpcb *inp, struct mbuf *m)
{
	struct label *mlabel;

	FUNC0(inp);

	if (mac_policy_count == 0)
		return;

	mlabel = FUNC2(m);

	FUNC1(inpcb_create_mbuf, inp, inp->inp_label, m,
	    mlabel);
}