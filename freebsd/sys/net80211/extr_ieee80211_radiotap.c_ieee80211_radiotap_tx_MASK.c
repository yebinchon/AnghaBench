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
struct mbuf {int dummy; } ;
struct ieee80211vap {int iv_flags_ext; int /*<<< orphan*/  iv_rawbpf; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_montaps; struct ieee80211_radiotap_header* ic_th; } ;
struct ieee80211_radiotap_header {int /*<<< orphan*/  it_len; } ;

/* Variables and functions */
 int IEEE80211_FEXT_BPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_radiotap_header*,int,struct mbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,struct mbuf*,struct ieee80211_radiotap_header*,int) ; 

void
FUNC4(struct ieee80211vap *vap0, struct mbuf *m)
{
	struct ieee80211com *ic = vap0->iv_ic;
	struct ieee80211_radiotap_header *th = ic->ic_th;
	int len;

	FUNC0(th != NULL, ("no tx radiotap header"));
	len = FUNC2(th->it_len);

	if (vap0->iv_flags_ext & IEEE80211_FEXT_BPF)
		FUNC1(vap0->iv_rawbpf, th, len, m);
	/*
	 * Spam monitor mode vaps.
	 */
	if (ic->ic_montaps != 0)
		FUNC3(vap0, m, th, len);
}