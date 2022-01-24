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
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211vap {int iv_flags; int /*<<< orphan*/ * iv_wpa_ie; } ;

/* Variables and functions */
 int IEEE80211_F_WPA1 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uint8_t *
FUNC1(uint8_t *frm, const struct ieee80211vap *vap)
{
	if (vap->iv_flags & IEEE80211_F_WPA1 && vap->iv_wpa_ie != NULL)
		return (FUNC0(frm, vap->iv_wpa_ie));
	else {
		/* XXX else complain? */
		return (frm);
	}
}