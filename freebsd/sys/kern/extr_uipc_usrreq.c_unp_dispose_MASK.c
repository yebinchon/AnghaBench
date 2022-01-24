#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct unpcb {int /*<<< orphan*/  unp_gcflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_mb; } ;
struct socket {TYPE_1__ so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  UNPGC_IGNORE_RIGHTS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct unpcb* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct socket *so)
{
	struct unpcb *unp;

	unp = FUNC3(so);
	FUNC1();
	unp->unp_gcflag |= UNPGC_IGNORE_RIGHTS;
	FUNC2();
	if (!FUNC0(so))
		FUNC4(so->so_rcv.sb_mb);
}