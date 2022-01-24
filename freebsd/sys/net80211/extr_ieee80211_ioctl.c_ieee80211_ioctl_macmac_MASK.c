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
struct ieee80211vap {struct ieee80211_aclator const* iv_acl; } ;
struct ieee80211req {int i_len; scalar_t__ i_type; int /*<<< orphan*/  i_data; } ;
typedef  struct ieee80211_aclator {int /*<<< orphan*/  (* iac_remove ) (struct ieee80211vap*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* iac_add ) (struct ieee80211vap*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* iac_attach ) (struct ieee80211vap*) ;} const ieee80211_aclator ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_ADDR_LEN ; 
 scalar_t__ IEEE80211_IOC_ADDMAC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ieee80211_aclator const* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
	uint8_t mac[IEEE80211_ADDR_LEN];
	const struct ieee80211_aclator *acl = vap->iv_acl;
	int error;

	if (ireq->i_len != sizeof(mac))
		return EINVAL;
	error = FUNC0(ireq->i_data, mac, ireq->i_len);
	if (error)
		return error;
	if (acl == NULL) {
		acl = FUNC1("mac");
		if (acl == NULL || !acl->iac_attach(vap))
			return EINVAL;
		vap->iv_acl = acl;
	}
	if (ireq->i_type == IEEE80211_IOC_ADDMAC)
		acl->iac_add(vap, mac);
	else
		acl->iac_remove(vap, mac);
	return 0;
}