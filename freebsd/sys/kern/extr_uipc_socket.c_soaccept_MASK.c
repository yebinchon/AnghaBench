#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_state; TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_accept ) (struct socket*,struct sockaddr**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int SS_NOFDREF ; 
 int FUNC5 (struct socket*,struct sockaddr**) ; 

int
FUNC6(struct socket *so, struct sockaddr **nam)
{
	int error;

	FUNC3(so);
	FUNC2((so->so_state & SS_NOFDREF) != 0, ("soaccept: !NOFDREF"));
	so->so_state &= ~SS_NOFDREF;
	FUNC4(so);

	FUNC1(so->so_vnet);
	error = (*so->so_proto->pr_usrreqs->pru_accept)(so, nam);
	FUNC0();
	return (error);
}