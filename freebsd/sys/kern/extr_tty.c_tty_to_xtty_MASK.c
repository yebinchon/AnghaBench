#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct xtty {int xt_size; int /*<<< orphan*/  xt_dev; int /*<<< orphan*/  xt_flags; int /*<<< orphan*/  xt_sid; int /*<<< orphan*/  xt_pgid; int /*<<< orphan*/  xt_column; int /*<<< orphan*/  xt_outlow; int /*<<< orphan*/  xt_outcc; int /*<<< orphan*/  xt_outsize; int /*<<< orphan*/  xt_inlow; int /*<<< orphan*/  xt_inlc; int /*<<< orphan*/  xt_incc; int /*<<< orphan*/  xt_insize; } ;
struct tty {scalar_t__ t_dev; int /*<<< orphan*/  t_flags; TYPE_2__* t_session; TYPE_1__* t_pgrp; int /*<<< orphan*/  t_column; int /*<<< orphan*/  t_outlow; int /*<<< orphan*/  t_outq; int /*<<< orphan*/  t_inlow; int /*<<< orphan*/  t_inq; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_sid; } ;
struct TYPE_3__ {int /*<<< orphan*/  pg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct tty *tp, struct xtty *xt)
{

	FUNC1(tp, MA_OWNED);

	xt->xt_size = sizeof(struct xtty);
	xt->xt_insize = FUNC4(&tp->t_inq);
	xt->xt_incc = FUNC2(&tp->t_inq);
	xt->xt_inlc = FUNC3(&tp->t_inq);
	xt->xt_inlow = tp->t_inlow;
	xt->xt_outsize = FUNC6(&tp->t_outq);
	xt->xt_outcc = FUNC5(&tp->t_outq);
	xt->xt_outlow = tp->t_outlow;
	xt->xt_column = tp->t_column;
	xt->xt_pgid = tp->t_pgrp ? tp->t_pgrp->pg_id : 0;
	xt->xt_sid = tp->t_session ? tp->t_session->s_sid : 0;
	xt->xt_flags = tp->t_flags;
	xt->xt_dev = tp->t_dev ? FUNC0(tp->t_dev) : (uint32_t)NODEV;
}