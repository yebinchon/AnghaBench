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
struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {int ms_idlen; int /*<<< orphan*/  ms_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHID ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

uint8_t *
FUNC2(uint8_t *frm, struct ieee80211vap *vap)
{
	struct ieee80211_mesh_state *ms = vap->iv_mesh;

	FUNC0(vap->iv_opmode == IEEE80211_M_MBSS, ("not a mbss vap"));

	*frm++ = IEEE80211_ELEMID_MESHID;
	*frm++ = ms->ms_idlen;
	FUNC1(frm, ms->ms_id, ms->ms_idlen);
	return frm + ms->ms_idlen;
}