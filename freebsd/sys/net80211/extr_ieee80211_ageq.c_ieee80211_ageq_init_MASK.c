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
struct ieee80211_ageq {int aq_maxlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_ageq*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_ageq*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ieee80211_ageq *aq, int maxlen, const char *name)
{
	FUNC1(aq, 0, sizeof(*aq));
	aq->aq_maxlen = maxlen;
	FUNC0(aq, name);		/* OS-dependent setup */
}