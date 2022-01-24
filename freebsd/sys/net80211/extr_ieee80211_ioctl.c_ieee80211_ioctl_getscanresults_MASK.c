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
typedef  int uint32_t ;
struct scanreq {int space; void* sr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_M_NOWAIT ; 
 int IEEE80211_M_ZERO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  get_scan_result ; 
 int /*<<< orphan*/  get_scan_space ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,int /*<<< orphan*/ ,struct scanreq*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211vap *vap,
	struct ieee80211req *ireq)
{
	struct scanreq req;
	int error;

	if (ireq->i_len < sizeof(struct scanreq))
		return EFAULT;

	error = 0;
	req.space = 0;
	FUNC3(vap, get_scan_space, &req);
	if (req.space > ireq->i_len)
		req.space = ireq->i_len;
	if (req.space > 0) {
		uint32_t space;
		void *p;

		space = req.space;
		/* XXX M_WAITOK after driver lock released */
		p = FUNC1(space, M_TEMP,
		    IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
		if (p == NULL)
			return ENOMEM;
		req.sr = p;
		FUNC3(vap, get_scan_result, &req);
		ireq->i_len = space - req.space;
		error = FUNC2(p, ireq->i_data, ireq->i_len);
		FUNC0(p, M_TEMP);
	} else
		ireq->i_len = 0;

	return error;
}