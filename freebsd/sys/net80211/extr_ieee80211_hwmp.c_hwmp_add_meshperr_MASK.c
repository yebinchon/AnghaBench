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
struct ieee80211_meshperr_ie {int perr_ndests; int /*<<< orphan*/  perr_ttl; int /*<<< orphan*/  perr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHPERR ; 
 int IEEE80211_MESHPERR_FLAGS_AE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static uint8_t *
FUNC8(uint8_t *frm, const struct ieee80211_meshperr_ie *perr)
{
	int i;

	*frm++ = IEEE80211_ELEMID_MESHPERR;
	*frm++ = perr->perr_len;	/* len already calculated */
	*frm++ = perr->perr_ttl;
	*frm++ = perr->perr_ndests;
	for (i = 0; i < perr->perr_ndests; i++) {
		*frm++ = FUNC4(i);
		FUNC2(frm, FUNC3(i));
		frm += 6;
		FUNC1(frm, FUNC6(i));
		if (FUNC4(i) & IEEE80211_MESHPERR_FLAGS_AE) {
			FUNC2(frm, FUNC7(i));
			frm += 6;
		}
		FUNC0(frm, FUNC5(i));
	}
	return frm;
}