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
struct sdp_sock {int /*<<< orphan*/  tx_ring; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sdp_sock*) ; 

__attribute__((used)) static
void FUNC4(struct sdp_sock *ssk)
{
	while (FUNC3(ssk)) {
		struct mbuf *mb;
		mb = FUNC2(ssk, FUNC1(ssk->tx_ring));
		if (!mb)
			break;
		FUNC0(mb);
	}
}