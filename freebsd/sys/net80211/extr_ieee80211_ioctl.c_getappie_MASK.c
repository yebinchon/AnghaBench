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
struct ieee80211req {scalar_t__ i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211_appie {scalar_t__ ie_len; int /*<<< orphan*/  ie_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(const struct ieee80211_appie *aie, struct ieee80211req *ireq)
{
	if (aie == NULL)
		return EINVAL;
	/* NB: truncate, caller can check length */
	if (ireq->i_len > aie->ie_len)
		ireq->i_len = aie->ie_len;
	return FUNC0(aie->ie_data, ireq->i_data, ireq->i_len);
}