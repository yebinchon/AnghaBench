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
struct ieee80211_ageq {scalar_t__ aq_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_ageq*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

void
FUNC2(struct ieee80211_ageq *aq)
{
	FUNC1(aq->aq_len == 0, ("%d frames on ageq", aq->aq_len));
	FUNC0(aq);		/* OS-dependent cleanup */
}