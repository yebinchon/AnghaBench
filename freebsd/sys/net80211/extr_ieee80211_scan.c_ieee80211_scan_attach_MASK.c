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
struct ieee80211com {TYPE_1__* ic_scan_methods; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sc_attach ) (struct ieee80211com*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 

void
FUNC2(struct ieee80211com *ic)
{
	/*
	 * If there's no scan method pointer, attach the
	 * swscan set as a default.
	 */
	if (ic->ic_scan_methods == NULL)
		FUNC0(ic);
	else
		ic->ic_scan_methods->sc_attach(ic);
}