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
struct nm_selinfo {TYPE_1__ si; int /*<<< orphan*/  kqueue_users; int /*<<< orphan*/  mtxname; } ;
struct netmap_priv_d {struct nm_selinfo** np_si; struct netmap_adapter* np_na; } ;
struct netmap_adapter {int dummy; } ;
struct knote {int kn_filter; struct netmap_priv_d* kn_hook; int /*<<< orphan*/ * kn_fop; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EVFILT_READ ; 
 int EVFILT_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t NR_RX ; 
 size_t NR_TX ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netmap_rfiltops ; 
 int /*<<< orphan*/  netmap_wfiltops ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, struct knote *kn)
{
	struct netmap_priv_d *priv;
	int error;
	struct netmap_adapter *na;
	struct nm_selinfo *si;
	int ev = kn->kn_filter;

	if (ev != EVFILT_READ && ev != EVFILT_WRITE) {
		FUNC4("bad filter request %d", ev);
		return 1;
	}
	error = FUNC2((void**)&priv);
	if (error) {
		FUNC4("device not yet setup");
		return 1;
	}
	na = priv->np_na;
	if (na == NULL) {
		FUNC4("no netmap adapter for this file descriptor");
		return 1;
	}
	/* the si is indicated in the priv */
	si = priv->np_si[(ev == EVFILT_WRITE) ? NR_TX : NR_RX];
	kn->kn_fop = (ev == EVFILT_WRITE) ?
		&netmap_wfiltops : &netmap_rfiltops;
	kn->kn_hook = priv;
	FUNC0();
	si->kqueue_users++;
	FUNC5("kqueue users for %s: %d", si->mtxname, si->kqueue_users);
	FUNC1();
	FUNC3(&si->si.si_note, kn, /*islocked=*/0);

	return 0;
}