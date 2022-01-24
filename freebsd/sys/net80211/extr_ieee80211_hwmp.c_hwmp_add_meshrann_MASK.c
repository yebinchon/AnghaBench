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
struct ieee80211_meshrann_ie {int /*<<< orphan*/  rann_metric; int /*<<< orphan*/  rann_interval; int /*<<< orphan*/  rann_seq; int /*<<< orphan*/  rann_addr; int /*<<< orphan*/  rann_ttl; int /*<<< orphan*/  rann_hopcount; int /*<<< orphan*/  rann_flags; int /*<<< orphan*/  rann_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ELEMID_MESHRANN ; 

__attribute__((used)) static uint8_t *
FUNC2(uint8_t *frm, const struct ieee80211_meshrann_ie *rann)
{
	*frm++ = IEEE80211_ELEMID_MESHRANN;
	*frm++ = rann->rann_len;
	*frm++ = rann->rann_flags;
	*frm++ = rann->rann_hopcount;
	*frm++ = rann->rann_ttl;
	FUNC1(frm, rann->rann_addr); frm += 6;
	FUNC0(frm, rann->rann_seq);
	FUNC0(frm, rann->rann_interval);
	FUNC0(frm, rann->rann_metric);
	return frm;
}