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
struct ieee80211vap {int /*<<< orphan*/ * iv_sysctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct ieee80211vap *vap)
{

	if (vap->iv_sysctl != NULL) {
		FUNC1(vap->iv_sysctl);
		FUNC0(vap->iv_sysctl, M_DEVBUF);
		vap->iv_sysctl = NULL;
	}
}