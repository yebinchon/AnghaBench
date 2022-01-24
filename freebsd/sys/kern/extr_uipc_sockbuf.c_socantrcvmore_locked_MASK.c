#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sb_state; } ;
struct socket {TYPE_1__ so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  SBS_CANTRCVMORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

void
FUNC4(struct socket *so)
{

	FUNC0(&so->so_rcv);

	so->so_rcv.sb_state |= SBS_CANTRCVMORE;
	FUNC3(so);
	FUNC2(FUNC1(&so->so_rcv), MA_NOTOWNED);
}