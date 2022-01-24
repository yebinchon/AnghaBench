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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,scalar_t__) ; 
#define  IEEE80211_ACTION_MESHPEERING_CLOSE 130 
#define  IEEE80211_ACTION_MESHPEERING_CONFIRM 129 
#define  IEEE80211_ACTION_MESHPEERING_OPEN 128 
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHPEER ; 
 int /*<<< orphan*/  IEEE80211_MPM_BASE_SZ ; 
 int /*<<< orphan*/  IEEE80211_MPM_MAX_SZ ; 
 scalar_t__ IEEE80211_MPPID_MPM ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

uint8_t *
FUNC2(uint8_t *frm, uint8_t subtype, uint16_t localid,
    uint16_t peerid, uint16_t reason)
{

	FUNC1(localid != 0, ("localid == 0"));

	*frm++ = IEEE80211_ELEMID_MESHPEER;
	switch (subtype) {
	case IEEE80211_ACTION_MESHPEERING_OPEN:
		*frm++ = IEEE80211_MPM_BASE_SZ;		/* length */
		FUNC0(frm, IEEE80211_MPPID_MPM);	/* proto */
		FUNC0(frm, localid);			/* local ID */
		break;
	case IEEE80211_ACTION_MESHPEERING_CONFIRM:
		FUNC1(peerid != 0, ("sending peer confirm without peer id"));
		*frm++ = IEEE80211_MPM_BASE_SZ + 2;	/* length */
		FUNC0(frm, IEEE80211_MPPID_MPM);	/* proto */
		FUNC0(frm, localid);			/* local ID */
		FUNC0(frm, peerid);			/* peer ID */
		break;
	case IEEE80211_ACTION_MESHPEERING_CLOSE:
		if (peerid)
			*frm++ = IEEE80211_MPM_MAX_SZ;	/* length */
		else
			*frm++ = IEEE80211_MPM_BASE_SZ + 2; /* length */
		FUNC0(frm, IEEE80211_MPPID_MPM);	/* proto */
		FUNC0(frm, localid);	/* local ID */
		if (peerid)
			FUNC0(frm, peerid);	/* peer ID */
		FUNC0(frm, reason);
		break;
	}
	return frm;
}