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
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 struct unpcb* FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct unpcb*) ; 

__attribute__((used)) static int
FUNC6(struct socket *so)
{
	struct unpcb *unp;

	unp = FUNC4(so);
	FUNC0(unp != NULL, ("uipc_shutdown: unp == NULL"));

	FUNC1(unp);
	FUNC3(so);
	FUNC5(unp);
	FUNC2(unp);
	return (0);
}