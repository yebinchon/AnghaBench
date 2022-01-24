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
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_toa_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTAG_ABI_NET80211 ; 
 int /*<<< orphan*/  NET80211_TAG_TOA_PARAMS ; 
 struct m_tag* FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_toa_params*,struct ieee80211_toa_params*,int) ; 

int
FUNC2(struct mbuf *m, struct ieee80211_toa_params *p)
{
	struct m_tag *mtag;
	struct ieee80211_toa_params *rp;

	mtag = FUNC0(m, MTAG_ABI_NET80211, NET80211_TAG_TOA_PARAMS,
	    NULL);
	if (mtag == NULL)
		return (0);
	rp = (struct ieee80211_toa_params *)(mtag + 1);
	if (p != NULL)
		FUNC1(p, rp, sizeof(*p));
	return (1);
}