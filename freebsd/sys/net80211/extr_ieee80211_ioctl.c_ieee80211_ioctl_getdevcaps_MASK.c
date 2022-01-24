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
struct ieee80211req_chaninfo {int ic_nchans; int /*<<< orphan*/  ic_chans; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211com {int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int,int*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_vhtcaps; int /*<<< orphan*/  ic_htcaps; int /*<<< orphan*/  ic_cryptocaps; int /*<<< orphan*/  ic_caps; } ;
struct ieee80211_devcaps_req {struct ieee80211req_chaninfo dc_chaninfo; int /*<<< orphan*/  dc_vhtcaps; int /*<<< orphan*/  dc_htcaps; int /*<<< orphan*/  dc_cryptocaps; int /*<<< orphan*/  dc_drivercaps; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_devcaps_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_devcaps_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_M_NOWAIT ; 
 int IEEE80211_M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC5 (struct ieee80211_devcaps_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ieee80211com *ic,
	const struct ieee80211req *ireq)
{
	struct ieee80211_devcaps_req *dc;
	struct ieee80211req_chaninfo *ci;
	int maxchans, error;

	maxchans = 1 + ((ireq->i_len - sizeof(struct ieee80211_devcaps_req)) /
	    sizeof(struct ieee80211_channel));
	/* NB: require 1 so we know ic_nchans is accessible */
	if (maxchans < 1)
		return EINVAL;
	/* constrain max request size, 2K channels is ~24Kbytes */
	if (maxchans > 2048)
		maxchans = 2048;
	dc = (struct ieee80211_devcaps_req *)
	    FUNC3(FUNC0(maxchans), M_TEMP,
	    IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
	if (dc == NULL)
		return ENOMEM;
	dc->dc_drivercaps = ic->ic_caps;
	dc->dc_cryptocaps = ic->ic_cryptocaps;
	dc->dc_htcaps = ic->ic_htcaps;
	dc->dc_vhtcaps = ic->ic_vhtcaps;
	ci = &dc->dc_chaninfo;
	ic->ic_getradiocaps(ic, maxchans, &ci->ic_nchans, ci->ic_chans);
	FUNC4(ci->ic_nchans <= maxchans,
	    ("nchans %d maxchans %d", ci->ic_nchans, maxchans));
	FUNC6(ci->ic_chans, ci->ic_nchans);
	error = FUNC5(dc, ireq->i_data, FUNC1(dc));
	FUNC2(dc, M_TEMP);
	return error;
}