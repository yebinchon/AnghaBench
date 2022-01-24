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
struct ieee80211_authenticator {int dummy; } ;

/* Variables and functions */
 int IEEE80211_AUTH_MAX ; 
 int /*<<< orphan*/ * auth_modnames ; 
 struct ieee80211_authenticator const** authenticators ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

const struct ieee80211_authenticator *
FUNC1(int auth)
{
	if (auth >= IEEE80211_AUTH_MAX)
		return NULL;
	if (authenticators[auth] == NULL)
		FUNC0(auth_modnames[auth]);
	return authenticators[auth];
}