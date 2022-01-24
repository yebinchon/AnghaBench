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
struct tcpcb {int /*<<< orphan*/  ccv; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* after_idle ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void inline
FUNC3(struct tcpcb *tp)
{
	FUNC1(tp->t_inpcb);

	if (FUNC0(tp)->after_idle != NULL)
		FUNC0(tp)->after_idle(tp->ccv);
}