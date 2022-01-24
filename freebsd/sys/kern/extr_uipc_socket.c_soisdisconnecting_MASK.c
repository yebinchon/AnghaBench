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
struct socket {int /*<<< orphan*/  so_timeo; int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; int /*<<< orphan*/  so_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  SS_ISCONNECTING ; 
 int /*<<< orphan*/  SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct socket *so)
{

	FUNC1(so);
	so->so_state &= ~SS_ISCONNECTING;
	so->so_state |= SS_ISDISCONNECTING;

	if (!FUNC3(so)) {
		FUNC0(&so->so_rcv);
		FUNC4(so);
		FUNC0(&so->so_snd);
		FUNC5(so);
	}
	FUNC2(so);
	FUNC6(&so->so_timeo);
}