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
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {scalar_t__ ic_freq; int /*<<< orphan*/  ic_flags; } ;
typedef  int /*<<< orphan*/  chan ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IEEE80211_CHAN_ANY ; 
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ieee80211_channel*,int) ; 
 struct ieee80211_channel* FUNC1 (struct ieee80211com*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211vap*,struct ieee80211_channel*) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211vap *vap,
	const struct ieee80211req *ireq)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_channel chan, *c;
	int error;

	if (ireq->i_len != sizeof(chan))
		return EINVAL;
	error = FUNC0(ireq->i_data, &chan, sizeof(chan));
	if (error != 0)
		return error;

	/* XXX 0xffff overflows 16-bit signed */
	if (chan.ic_freq == 0 || chan.ic_freq == IEEE80211_CHAN_ANY) {
		c = IEEE80211_CHAN_ANYC;
	} else {
		c = FUNC1(ic, chan.ic_freq, chan.ic_flags);
		if (c == NULL)
			return EINVAL;
	}
	return FUNC2(vap, c);
}