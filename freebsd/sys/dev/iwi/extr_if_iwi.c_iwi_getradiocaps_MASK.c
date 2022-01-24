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
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  def_chan_5ghz_band1 ; 
 int /*<<< orphan*/  def_chan_5ghz_band2 ; 
 int /*<<< orphan*/  def_chan_5ghz_band3 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
	uint8_t bands[IEEE80211_MODE_BYTES];

	FUNC3(ic, bands, sizeof(bands));
	*nchans = 0;
	if (FUNC2(bands, IEEE80211_MODE_11B) || FUNC2(bands, IEEE80211_MODE_11G))
		FUNC1(chans, maxchans, nchans,
		    bands, 0);
	if (FUNC2(bands, IEEE80211_MODE_11A)) {
		FUNC0(chans, maxchans, nchans,
		    def_chan_5ghz_band1, FUNC4(def_chan_5ghz_band1),
		    bands, 0);
		FUNC0(chans, maxchans, nchans,
		    def_chan_5ghz_band2, FUNC4(def_chan_5ghz_band2),
		    bands, 0);
		FUNC0(chans, maxchans, nchans,
		    def_chan_5ghz_band3, FUNC4(def_chan_5ghz_band3),
		    bands, 0);
	}
}