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
struct socket {int dummy; } ;
struct ib_umem {int dummy; } ;
struct ib_pool_fmr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_pool_fmr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_umem*) ; 
 TYPE_1__* FUNC2 (struct socket*) ; 

void FUNC3(struct socket *sk, struct ib_pool_fmr **_fmr, struct ib_umem **_umem)
{
	if (!FUNC2(sk)->qp_active)
		return;

	FUNC0(*_fmr);
	*_fmr = NULL;

	FUNC1(*_umem);
	*_umem = NULL;
}