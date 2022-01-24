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
struct socket {int dummy; } ;
struct inpcb {int /*<<< orphan*/  in6p_icmp6filt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_PCB ; 
 struct socket* V_ip6_mrouter ; 
 int /*<<< orphan*/  V_ripcbinfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct inpcb* FUNC8 (struct socket*) ; 

__attribute__((used)) static void
FUNC9(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC8(so);
	FUNC3(inp != NULL, ("rip6_detach: inp == NULL"));

	if (so == V_ip6_mrouter && &ip6_mrouter_done)
		FUNC7();
	/* xxx: RSVP */
	FUNC0(&V_ripcbinfo);
	FUNC2(inp);
	FUNC4(inp->in6p_icmp6filt, M_PCB);
	FUNC5(inp);
	FUNC6(inp);
	FUNC1(&V_ripcbinfo);
}