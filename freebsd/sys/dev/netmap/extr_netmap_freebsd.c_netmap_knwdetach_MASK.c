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
struct nm_selinfo {int /*<<< orphan*/  kqueue_users; int /*<<< orphan*/  mtxname; TYPE_1__ si; } ;
struct netmap_priv_d {struct nm_selinfo** np_si; } ;
struct knote {scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t NR_TX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn)
{
	struct netmap_priv_d *priv = (struct netmap_priv_d *)kn->kn_hook;
	struct nm_selinfo *si = priv->np_si[NR_TX];

	FUNC2(&si->si.si_note, kn, /*islocked=*/0);
	FUNC0();
	si->kqueue_users--;
	FUNC3("kqueue users for %s: %d", si->mtxname, si->kqueue_users);
	FUNC1();
}