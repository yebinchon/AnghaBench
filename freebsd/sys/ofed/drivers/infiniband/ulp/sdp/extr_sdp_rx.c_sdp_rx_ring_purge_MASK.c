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
struct sdp_sock {int /*<<< orphan*/  rx_ring; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sdp_sock*) ; 
 struct mbuf* FUNC3 (struct sdp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(struct sdp_sock *ssk)
{
	while (FUNC2(ssk) > 0) {
		struct mbuf *mb;
		mb = FUNC3(ssk, FUNC1(ssk->rx_ring));
		if (!mb)
			break;
		FUNC0(mb);
	}
}