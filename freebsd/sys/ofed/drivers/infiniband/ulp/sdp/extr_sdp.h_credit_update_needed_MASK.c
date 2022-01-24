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
 int SDP_MIN_TX_CREDITS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sdp_sock*) ; 
 int FUNC2 (struct sdp_sock*) ; 
 int FUNC3 (struct sdp_sock*) ; 
 scalar_t__ FUNC4 (struct sdp_sock*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct sdp_sock *ssk)
{
	int c;

	c = FUNC1(ssk);
	if (FUNC0(c > SDP_MIN_TX_CREDITS))
		c += c/2;
	return FUNC5(c < FUNC2(ssk)) &&
	    FUNC0(FUNC4(ssk) > 0) &&
	    FUNC0(FUNC3(ssk));
}