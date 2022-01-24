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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct ieee80211_rate_table {size_t* rateCodeToIndex; size_t rateCount; TYPE_1__* info; } ;
struct ieee80211_frame {int dummy; } ;
struct TYPE_2__ {size_t dot11Rate; } ;

/* Variables and functions */
 int IEEE80211_CRC_LEN ; 
 size_t IEEE80211_RATE_BASIC ; 
 int LLC_SNAPFRAMELEN ; 
 float FUNC0 (char*) ; 
 int FUNC1 (struct ieee80211_rate_table const*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 size_t FUNC4 (struct ieee80211_rate_table const*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct ieee80211_rate_table* FUNC6 (char const*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,int,char*,char*) ; 
 char* FUNC8 (size_t) ; 
 int FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(int argc, char *argv[])
{
	const struct ieee80211_rate_table *rt;
	const char *mode;
	uint32_t frameLen;
	uint16_t rate;
	uint16_t time;
	uint8_t rix;
	int ch, allrates, isShortPreamble, isShort;
	float frate;

	FUNC5();

	mode = "11g";
	isShortPreamble = 0;
	frameLen = 1500
		 + sizeof(struct ieee80211_frame)
		 + LLC_SNAPFRAMELEN
		 + IEEE80211_CRC_LEN
		 ;
	rate = 2*54;
	allrates = 0;
	while ((ch = FUNC3(argc, argv, "al:m:r:s")) != -1) {
		switch (ch) {
		case 'a':
			allrates = 1;
			break;
		case 'l':
			frameLen = FUNC9(optarg, NULL, 0);
			break;
		case 'm':
			mode = optarg;
			break;
		case 'r':
			frate = FUNC0(optarg);
			rate = (int) 2*frate;
			break;
		case 's':
			isShortPreamble = 1;
			break;
		default:
			FUNC10(argv[0]);
			break;
		}
	}
	rt = FUNC6(mode);
	if (rt == NULL)
		FUNC2(-1, "unknown mode %s", mode);
	if (!allrates) {
		rix = rt->rateCodeToIndex[rate];
		if (rix == (uint8_t) -1)
			FUNC2(-1, "rate %s not valid for mode %s", FUNC8(rate), mode);
		isShort = FUNC1(rt, rix, isShortPreamble, 1);

		time = FUNC4(rt, frameLen, rate, isShort);
		FUNC7("%u usec to send %u bytes @ %s Mb/s, %s preamble\n",
		    time, frameLen, FUNC8(rate),
		    isShort ? "short" : "long");
	} else {
		for (rix = 0; rix < rt->rateCount; rix++) {
			rate = rt->info[rix].dot11Rate &~ IEEE80211_RATE_BASIC;
			isShort = FUNC1(rt, rix, isShortPreamble, 0);
			time = FUNC4(rt, frameLen, rate,
			    isShort);
			FUNC7("%u usec to send %u bytes @ %s Mb/s, %s preamble\n",
			    time, frameLen, FUNC8(rate),
			    isShort ? "short" : "long");
		}
	}
	return 0;
}