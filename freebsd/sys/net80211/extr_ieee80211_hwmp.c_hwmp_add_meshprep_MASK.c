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
struct ieee80211_meshprep_ie {int prep_flags; int /*<<< orphan*/  prep_origseq; int /*<<< orphan*/  prep_origaddr; int /*<<< orphan*/  prep_metric; int /*<<< orphan*/  prep_lifetime; int /*<<< orphan*/  prep_target_ext_addr; int /*<<< orphan*/  prep_targetseq; int /*<<< orphan*/  prep_targetaddr; int /*<<< orphan*/  prep_ttl; int /*<<< orphan*/  prep_hopcount; int /*<<< orphan*/  prep_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHPREP ; 
 int IEEE80211_MESHPREP_FLAGS_AE ; 

__attribute__((used)) static uint8_t *
FUNC2(uint8_t *frm, const struct ieee80211_meshprep_ie *prep)
{
	*frm++ = IEEE80211_ELEMID_MESHPREP;
	*frm++ = prep->prep_len;	/* len already calculated */
	*frm++ = prep->prep_flags;
	*frm++ = prep->prep_hopcount;
	*frm++ = prep->prep_ttl;
	FUNC1(frm, prep->prep_targetaddr); frm += 6;
	FUNC0(frm, prep->prep_targetseq);
	if (prep->prep_flags & IEEE80211_MESHPREP_FLAGS_AE) {
		FUNC1(frm, prep->prep_target_ext_addr);
		frm += 6;
	}
	FUNC0(frm, prep->prep_lifetime);
	FUNC0(frm, prep->prep_metric);
	FUNC1(frm, prep->prep_origaddr); frm += 6;
	FUNC0(frm, prep->prep_origseq);
	return frm;
}