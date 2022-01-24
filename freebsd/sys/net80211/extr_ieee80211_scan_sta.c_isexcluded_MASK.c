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
struct ieee80211vap {TYPE_2__* iv_des_chan; TYPE_1__* iv_ic; } ;
struct ieee80211_channel {scalar_t__ ic_freq; int /*<<< orphan*/  ic_ieee; } ;
struct TYPE_4__ {scalar_t__ ic_freq; } ;
struct TYPE_3__ {int /*<<< orphan*/  ic_chan_active; } ;

/* Variables and functions */
 TYPE_2__* IEEE80211_CHAN_ANYC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct ieee80211vap *vap, const struct ieee80211_channel *c)
{
	return (FUNC0(vap->iv_ic->ic_chan_active, c->ic_ieee) ||
	    (vap->iv_des_chan != IEEE80211_CHAN_ANYC &&
	     c->ic_freq != vap->iv_des_chan->ic_freq));
}