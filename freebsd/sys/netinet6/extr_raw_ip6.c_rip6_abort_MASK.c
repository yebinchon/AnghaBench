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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 struct inpcb* FUNC2 (struct socket*) ; 

__attribute__((used)) static void
FUNC3(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC2(so);
	FUNC0(inp != NULL, ("rip6_abort: inp == NULL"));

	FUNC1(so);
}