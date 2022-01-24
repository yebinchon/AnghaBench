#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sb_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  si_note; } ;
struct socket {TYPE_3__ so_rcv; TYPE_2__ so_rdsel; } ;
struct knote {TYPE_1__* kn_fp; } ;
struct TYPE_4__ {struct socket* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB_KNOTE ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

__attribute__((used)) static void
FUNC5(struct knote *kn)
{
	struct socket *so = kn->kn_fp->f_data;

	FUNC3(so);
	FUNC2(&so->so_rdsel.si_note, kn, 1);
	if (!FUNC0(so) && FUNC1(&so->so_rdsel.si_note))
		so->so_rcv.sb_flags &= ~SB_KNOTE;
	FUNC4(so);
}