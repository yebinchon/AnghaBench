#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iovec {void* iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {void* len; int /*<<< orphan*/  ptr; int /*<<< orphan*/  type; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
typedef  TYPE_1__ packet_t ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ channel_t ;

/* Variables and functions */
 void* ETHER_ADDR_LEN ; 
 void* ETHER_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct iovec*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct iovec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(channel_t *chan, packet_t *pkt)
{
	struct iovec iov[4];
	ssize_t nw;

	iov[0].iov_base = pkt->dst;
	iov[0].iov_len = ETHER_ADDR_LEN;
	iov[1].iov_base = pkt->src;
	iov[1].iov_len = ETHER_ADDR_LEN;
	iov[2].iov_base = pkt->type;
	iov[2].iov_len = ETHER_TYPE_LEN;
	iov[3].iov_base = pkt->ptr;
	iov[3].iov_len = pkt->len;

	/* tap device write never fails */
	nw = FUNC2(chan->fd, iov, FUNC0(iov));
	FUNC1(nw > 0);

	return true;
}