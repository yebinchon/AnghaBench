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
struct sdp_sock {int recv_request; int /*<<< orphan*/  rx_ring; scalar_t__ recv_request_head; } ;
struct sdp_chrecvbuf {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sdp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sdp_sock *ssk, struct sdp_chrecvbuf *buf)
{
	if (FUNC3(ssk, FUNC0(buf->size)) == 0)
		ssk->recv_request_head = FUNC1(ssk->rx_ring) + 1;
	else
		ssk->recv_request_head = FUNC2(ssk->rx_ring);
	ssk->recv_request = 1;
}