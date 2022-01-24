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
struct ieee80211_meshpreq_ie {int preq_flags; int preq_tcount; int /*<<< orphan*/  preq_metric; int /*<<< orphan*/  preq_lifetime; int /*<<< orphan*/  preq_orig_ext_addr; int /*<<< orphan*/  preq_origseq; int /*<<< orphan*/  preq_origaddr; int /*<<< orphan*/  preq_id; int /*<<< orphan*/  preq_ttl; int /*<<< orphan*/  preq_hopcount; int /*<<< orphan*/  preq_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHPREQ ; 
 int IEEE80211_MESHPREQ_FLAGS_AE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static uint8_t *
FUNC5(uint8_t *frm, const struct ieee80211_meshpreq_ie *preq)
{
	int i;

	*frm++ = IEEE80211_ELEMID_MESHPREQ;
	*frm++ = preq->preq_len;	/* len already calculated */
	*frm++ = preq->preq_flags;
	*frm++ = preq->preq_hopcount;
	*frm++ = preq->preq_ttl;
	FUNC0(frm, preq->preq_id);
	FUNC1(frm, preq->preq_origaddr); frm += 6;
	FUNC0(frm, preq->preq_origseq);
	if (preq->preq_flags & IEEE80211_MESHPREQ_FLAGS_AE) {
		FUNC1(frm, preq->preq_orig_ext_addr);
		frm += 6;
	}
	FUNC0(frm, preq->preq_lifetime);
	FUNC0(frm, preq->preq_metric);
	*frm++ = preq->preq_tcount;
	for (i = 0; i < preq->preq_tcount; i++) {
		*frm++ = FUNC3(i);
		FUNC1(frm, FUNC2(i));
		frm += 6;
		FUNC0(frm, FUNC4(i));
	}
	return frm;
}