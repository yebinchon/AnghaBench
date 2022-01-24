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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct nm_selinfo {scalar_t__ kqueue_users; int /*<<< orphan*/  mtxname; TYPE_1__ si; } ;
struct netmap_priv_d {struct nm_selinfo** np_si; } ;
struct knote {scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t NR_RX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct knote *kn)
{
	struct netmap_priv_d *priv = (struct netmap_priv_d *)kn->kn_hook;
	struct nm_selinfo *si = priv->np_si[NR_RX];

	FUNC3(&si->si.si_note, kn, /*islocked=*/0);
	FUNC1();
	FUNC0(si->kqueue_users > 0, ("kqueue_user underflow on %s",
	    si->mtxname));
	si->kqueue_users--;
	FUNC4("kqueue users for %s: %d", si->mtxname, si->kqueue_users);
	FUNC2();
}