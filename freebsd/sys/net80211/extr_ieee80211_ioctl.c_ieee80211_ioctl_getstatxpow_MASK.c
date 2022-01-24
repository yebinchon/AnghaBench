#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  txpow ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211req_sta_txpow {int /*<<< orphan*/  it_txpow; int /*<<< orphan*/  it_macaddr; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_txpower; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_sta; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ieee80211req_sta_txpow*,int) ; 
 int FUNC1 (struct ieee80211req_sta_txpow*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_node* FUNC2 (int /*<<< orphan*/ *,struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
	struct ieee80211_node *ni;
	struct ieee80211req_sta_txpow txpow;
	int error;

	if (ireq->i_len != sizeof(txpow))
		return EINVAL;
	error = FUNC0(ireq->i_data, &txpow, sizeof(txpow));
	if (error != 0)
		return error;
	ni = FUNC2(&vap->iv_ic->ic_sta, vap, txpow.it_macaddr);
	if (ni == NULL)
		return ENOENT;
	txpow.it_txpow = ni->ni_txpower;
	error = FUNC1(&txpow, ireq->i_data, sizeof(txpow));
	FUNC3(ni);
	return error;
}