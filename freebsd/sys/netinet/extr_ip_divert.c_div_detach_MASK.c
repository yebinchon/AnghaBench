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
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  V_divcbinfo ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 struct inpcb* FUNC6 (struct socket*) ; 

__attribute__((used)) static void
FUNC7(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC6(so);
	FUNC3(inp != NULL, ("div_detach: inp == NULL"));
	FUNC0(&V_divcbinfo);
	FUNC2(inp);
	FUNC4(inp);
	FUNC5(inp);
	FUNC1(&V_divcbinfo);
}