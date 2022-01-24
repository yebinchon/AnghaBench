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
struct sdp_sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int SDP_MIN_TX_CREDITS ; 
 scalar_t__ SDP_TX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 scalar_t__ FUNC2 (struct sdp_sock*) ; 

__attribute__((used)) static inline int FUNC3(struct sdp_sock *ssk)
{
	int min_free;

	min_free = FUNC0(FUNC1(ssk),
			SDP_TX_SIZE - FUNC2(ssk));
	if (min_free < SDP_MIN_TX_CREDITS)
		return 0;

	return min_free - SDP_MIN_TX_CREDITS;
}