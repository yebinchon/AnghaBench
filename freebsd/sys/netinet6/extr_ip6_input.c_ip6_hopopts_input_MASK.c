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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct mbuf {int dummy; } ;
struct ip6_hbh {int ip6h_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 scalar_t__ FUNC1 (struct mbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6s_exthdrtoolong ; 
 struct mbuf* FUNC2 (struct mbuf*,int) ; 
 scalar_t__ FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(u_int32_t *plenp, u_int32_t *rtalertp,
    struct mbuf **mp, int *offp)
{
	struct mbuf *m = *mp;
	int off = *offp, hbhlen;
	struct ip6_hbh *hbh;

	/* validation of the length of the header */
	m = FUNC2(m, off + sizeof(*hbh));
	if (m == NULL) {
		FUNC0(ip6s_exthdrtoolong);
		*mp = NULL;
		return (-1);
	}
	hbh = (struct ip6_hbh *)(FUNC3(m, caddr_t) + off);
	hbhlen = (hbh->ip6h_len + 1) << 3;

	m = FUNC2(m, off + hbhlen);
	if (m == NULL) {
		FUNC0(ip6s_exthdrtoolong);
		*mp = NULL;
		return (-1);
	}
	hbh = (struct ip6_hbh *)(FUNC3(m, caddr_t) + off);
	off += hbhlen;
	hbhlen -= sizeof(struct ip6_hbh);
	if (FUNC1(m, (u_int8_t *)hbh + sizeof(struct ip6_hbh),
				hbhlen, rtalertp, plenp) < 0) {
		*mp = NULL;
		return (-1);
	}

	*offp = off;
	*mp = m;
	return (0);
}