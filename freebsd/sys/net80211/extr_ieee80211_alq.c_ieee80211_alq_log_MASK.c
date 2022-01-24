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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ieee80211vap {TYPE_1__* iv_ifp; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_alq_rec {int r_wlan; void* r_threadid; void* r_len; void* r_op; void* r_flags; void* r_src; int /*<<< orphan*/  r_timestamp; } ;
struct ale {scalar_t__ ae_data; } ;
struct TYPE_4__ {scalar_t__ td_tid; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_dunit; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IEEE80211_ALQ_MAX_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ale*) ; 
 TYPE_2__* curthread ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ieee80211_alq ; 
 struct ale* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  ticks ; 

int
FUNC6(struct ieee80211com *ic, struct ieee80211vap *vap,
    uint32_t op, uint32_t flags, uint16_t srcid, const uint8_t *src,
    size_t len)
{
	struct ale *ale;
	struct ieee80211_alq_rec *r;
	char *dst;

	/* Don't log if we're disabled */
	if (ieee80211_alq == NULL)
		return (0);

	if (len > IEEE80211_ALQ_MAX_PAYLOAD)
		return (ENOMEM);

	ale = FUNC4(len);
	if (! ale)
		return (ENOMEM);

	r = (struct ieee80211_alq_rec *) ale->ae_data;
	dst = ((char *) r) + sizeof(struct ieee80211_alq_rec);
	r->r_timestamp = FUNC3(ticks);
	if (vap != NULL) {
		r->r_wlan = FUNC1(vap->iv_ifp->if_dunit);
	} else {
		r->r_wlan = 0xffff;
	}
	r->r_src = FUNC1(srcid);
	r->r_flags = FUNC2(flags);
	r->r_op = FUNC2(op);
	r->r_len = FUNC2(len + sizeof(struct ieee80211_alq_rec));
	r->r_threadid = FUNC2((uint32_t) curthread->td_tid);

	if (src != NULL)
		FUNC5(dst, src, len);

	FUNC0(ieee80211_alq, ale);

	return (0);
}