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
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 struct inpcb* FUNC4 (struct socket*) ; 

__attribute__((used)) static int
FUNC5(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC4(so);
	FUNC2(inp != NULL, ("div_shutdown: inp == NULL"));
	FUNC0(inp);
	FUNC3(so);
	FUNC1(inp);
	return 0;
}