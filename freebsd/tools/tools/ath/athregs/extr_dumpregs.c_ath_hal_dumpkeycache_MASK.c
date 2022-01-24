#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  ismic ;
struct TYPE_3__ {int ah_macVersion; int ah_macRev; } ;
struct TYPE_4__ {TYPE_1__ revs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int AR_KEYTABLE_TYPE_TKIP ; 
 int AR_KEYTABLE_VALID ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_CRPT_MIC_ENABLE ; 
 int IEEE80211_ADDR_LEN ; 
 int NBBY ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  ah ; 
 char* FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC12 (int*,int) ; 
 scalar_t__ FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,int) ; 
 TYPE_2__ state ; 

__attribute__((used)) static void
FUNC16(FILE *fd, int nkeys)
{
	static const char *keytypenames[] = {
		"WEP-40", 	/* AR_KEYTABLE_TYPE_40 */
		"WEP-104",	/* AR_KEYTABLE_TYPE_104 */
		"#2",
		"WEP-128",	/* AR_KEYTABLE_TYPE_128 */
		"TKIP",		/* AR_KEYTABLE_TYPE_TKIP */
		"AES-OCB",	/* AR_KEYTABLE_TYPE_AES */
		"AES-CCM",	/* AR_KEYTABLE_TYPE_CCM */
		"CLR",		/* AR_KEYTABLE_TYPE_CLR */
	};
	int micEnabled = FUNC9(state.revs.ah_macVersion, state.revs.ah_macRev) < FUNC9(4,8) ? 0 :
	       FUNC8(ah, AR_STA_ID1) & AR_STA_ID1_CRPT_MIC_ENABLE;
	u_int8_t mac[IEEE80211_ADDR_LEN];
	u_int8_t ismic[128/NBBY];
	int entry;
	int first = 1;

	FUNC14(ismic, 0, sizeof(ismic));
	for (entry = 0; entry < nkeys; entry++) {
		u_int32_t macLo, macHi, type;
		u_int32_t key0, key1, key2, key3, key4;

		macHi = FUNC8(ah, FUNC6(entry));
		if ((macHi & AR_KEYTABLE_VALID) == 0 && FUNC12(ismic, entry))
			continue;
		macLo = FUNC8(ah, FUNC5(entry));
		macHi <<= 1;
		if (macLo & (1<<31))
			macHi |= 1;
		macLo <<= 1;
		mac[4] = macHi & 0xff;
		mac[5] = macHi >> 8;
		mac[0] = macLo & 0xff;
		mac[1] = macLo >> 8;
		mac[2] = macLo >> 16;
		mac[3] = macLo >> 24;
		type = FUNC8(ah, FUNC7(entry));
		if ((type & 7) == AR_KEYTABLE_TYPE_TKIP && micEnabled)
			FUNC15(ismic, entry+64);
		key0 = FUNC8(ah, FUNC0(entry));
		key1 = FUNC8(ah, FUNC1(entry));
		key2 = FUNC8(ah, FUNC2(entry));
		key3 = FUNC8(ah, FUNC3(entry));
		key4 = FUNC8(ah, FUNC4(entry));
		if (first) {
			FUNC11(fd, "\n");
			first = 0;
		}
		FUNC11(fd, "KEY[%03u] MAC %s %-7s %02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x\n"
			, entry
			, FUNC10(mac)
			, FUNC13(ismic, entry) ? "MIC" : keytypenames[type & 7]
			, (key0 >>  0) & 0xff
			, (key0 >>  8) & 0xff
			, (key0 >> 16) & 0xff
			, (key0 >> 24) & 0xff
			, (key1 >>  0) & 0xff
			, (key1 >>  8) & 0xff
			, (key2 >>  0) & 0xff
			, (key2 >>  8) & 0xff
			, (key2 >> 16) & 0xff
			, (key2 >> 24) & 0xff
			, (key3 >>  0) & 0xff
			, (key3 >>  8) & 0xff
			, (key4 >>  0) & 0xff
			, (key4 >>  8) & 0xff
			, (key4 >> 16) & 0xff
			, (key4 >> 24) & 0xff
		);
	}
}