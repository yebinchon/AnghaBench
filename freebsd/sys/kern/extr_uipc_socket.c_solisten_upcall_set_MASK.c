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
struct socket {void* sol_upcallarg; int /*<<< orphan*/  sol_upcall; } ;
typedef  int /*<<< orphan*/  so_upcall_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 

void
FUNC1(struct socket *so, so_upcall_t func, void *arg)
{

	FUNC0(so);
	so->sol_upcall = func;
	so->sol_upcallarg = arg;
}