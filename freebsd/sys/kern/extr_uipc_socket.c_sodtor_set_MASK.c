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
struct socket {int /*<<< orphan*/ * so_dtor; } ;
typedef  int /*<<< orphan*/  so_dtor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 

void
FUNC1(struct socket *so, so_dtor_t *func)
{

	FUNC0(so);
	so->so_dtor = func;
}