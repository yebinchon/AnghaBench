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
struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ ts_recent_age; scalar_t__ ts_recent; } ;
struct mbuf {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_PAWS_IDLE ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct tcpcb*,struct tcphdr*,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  tcps_pawsdrop ; 
 int /*<<< orphan*/  tcps_rcvdupbyte ; 
 int /*<<< orphan*/  tcps_rcvduppack ; 

int
FUNC5(struct mbuf *m, struct tcphdr *th, struct tcpcb *tp,
    int32_t tlen, int32_t thflags, int32_t * ret_val)
{

	if (FUNC4() - tp->ts_recent_age > TCP_PAWS_IDLE) {
		/*
		 * Invalidate ts_recent.  If this segment updates ts_recent,
		 * the age will be reset later and ts_recent will get a
		 * valid value.  If it does not, setting ts_recent to zero
		 * will at least satisfy the requirement that zero be placed
		 * in the timestamp echo reply when ts_recent isn't valid.
		 * The age isn't reset until we get a valid ts_recent
		 * because we don't want out-of-order segments to be dropped
		 * when ts_recent is old.
		 */
		tp->ts_recent = 0;
	} else {
		FUNC1(tcps_rcvduppack);
		FUNC0(tcps_rcvdupbyte, tlen);
		FUNC1(tcps_pawsdrop);
		*ret_val = 0;
		if (tlen) {
			FUNC3(m, tp, th, thflags, tlen, ret_val);
		} else {
			FUNC2(m, NULL);
		}
		return (1);
	}
	return (0);
}