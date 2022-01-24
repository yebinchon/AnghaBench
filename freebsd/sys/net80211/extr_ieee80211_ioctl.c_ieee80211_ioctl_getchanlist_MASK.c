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
struct ieee80211com {int /*<<< orphan*/  ic_chan_active; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
	struct ieee80211com *ic = vap->iv_ic;

	if (sizeof(ic->ic_chan_active) < ireq->i_len)
		ireq->i_len = sizeof(ic->ic_chan_active);
	return FUNC0(&ic->ic_chan_active, ireq->i_data, ireq->i_len);
}