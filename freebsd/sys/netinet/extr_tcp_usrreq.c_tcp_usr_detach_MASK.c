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
struct inpcb {int /*<<< orphan*/ * inp_socket; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (struct epoch_tracker) ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 struct inpcb* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,struct inpcb*) ; 

__attribute__((used)) static void
FUNC7(struct socket *so)
{
	struct inpcb *inp;
	int rlock = 0;
	struct epoch_tracker et;

	inp = FUNC5(so);
	FUNC2(inp != NULL, ("tcp_usr_detach: inp == NULL"));
	if (!FUNC0(&V_tcbinfo)) {
		FUNC3(et);
		rlock = 1;
	}
	FUNC1(inp);
	FUNC2(inp->inp_socket != NULL,
	    ("tcp_usr_detach: inp_socket == NULL"));
	FUNC6(so, inp);
	if (rlock)
		FUNC4(et);
}