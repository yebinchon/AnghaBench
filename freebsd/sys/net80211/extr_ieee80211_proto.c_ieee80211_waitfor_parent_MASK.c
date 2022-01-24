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
struct ieee80211com {int /*<<< orphan*/  ic_tq; int /*<<< orphan*/  ic_chw_task; int /*<<< orphan*/  ic_bmiss_task; int /*<<< orphan*/  ic_chan_task; int /*<<< orphan*/  ic_promisc_task; int /*<<< orphan*/  ic_mcast_task; int /*<<< orphan*/  ic_parent_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct ieee80211com *ic)
{
	FUNC1(ic->ic_tq);
	FUNC0(ic, &ic->ic_parent_task);
	FUNC0(ic, &ic->ic_mcast_task);
	FUNC0(ic, &ic->ic_promisc_task);
	FUNC0(ic, &ic->ic_chan_task);
	FUNC0(ic, &ic->ic_bmiss_task);
	FUNC0(ic, &ic->ic_chw_task);
	FUNC2(ic->ic_tq);
}