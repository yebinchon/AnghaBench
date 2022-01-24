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
struct unpcb {int dummy; } ;
struct socket {struct unpcb* so_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRU_CONNECT2 ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int FUNC3 (struct socket*,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct unpcb*,struct unpcb*) ; 

__attribute__((used)) static int
FUNC5(struct socket *so1, struct socket *so2)
{
	struct unpcb *unp, *unp2;
	int error;

	unp = so1->so_pcb;
	FUNC0(unp != NULL, ("uipc_connect2: unp == NULL"));
	unp2 = so2->so_pcb;
	FUNC0(unp2 != NULL, ("uipc_connect2: unp2 == NULL"));
	if (unp != unp2)
		FUNC4(unp, unp2);
	else
		FUNC1(unp);
	error = FUNC3(so1, so2, PRU_CONNECT2);
	if (unp != unp2)
		FUNC2(unp2);
	FUNC2(unp);
	return (error);
}