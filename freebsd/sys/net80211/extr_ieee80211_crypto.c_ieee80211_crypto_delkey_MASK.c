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
struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211vap*,struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 

int
FUNC3(struct ieee80211vap *vap, struct ieee80211_key *key)
{
	int status;

	FUNC1(vap);
	status = FUNC0(vap, key);
	FUNC2(vap);
	return status;
}